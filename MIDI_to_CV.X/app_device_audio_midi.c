/*******************************************************************************
Copyright 2016 Microchip Technology Inc. (www.microchip.com)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

To request to license the code under the MLA license (www.microchip.com/mla_license), 
please contact mla_licensing@microchip.com
*******************************************************************************/

/** INCLUDES *******************************************************/
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>

#include "system.h"

#include "mcc_generated_files/usb/usb.h"
#include "usb_device_midi.h"
#include "app_device_audio_midi.h"
#include "mcc_generated_files/pin_manager.h"
#include "mcp4728.h"


/** VARIABLES ******************************************************/
/* Some processors have a limited range of RAM addresses where the USB module
 * is able to access.  The following section is for those devices.  This section
 * assigns the buffers that need to be used by the USB module into those
 * specific areas.
 */
#if defined(FIXED_ADDRESS_MEMORY)
    #if defined(COMPILER_MPLAB_C18)
        #pragma udata DEVICE_AUDIO_MIDI_RX_DATA_BUFFER=DEVCE_AUDIO_MIDI_RX_DATA_BUFFER_ADDRESS
            static uint8_t ReceivedDataBuffer[64];
        #pragma udata DEVICE_AUDIO_MIDI_EVENT_DATA_BUFFER=DEVCE_AUDIO_MIDI_EVENT_DATA_BUFFER_ADDRESS
            static USB_AUDIO_MIDI_EVENT_PACKET midiData;
        #pragma udata
    #elif defined(__XC8)
        static uint8_t ReceivedDataBuffer[64] DEVCE_AUDIO_MIDI_RX_DATA_BUFFER_ADDRESS;
        static USB_AUDIO_MIDI_EVENT_PACKET midiData DEVCE_AUDIO_MIDI_EVENT_DATA_BUFFER_ADDRESS;
    #endif
#else
    //static uint8_t ReceivedDataBuffer[64];
    //static USB_AUDIO_MIDI_EVENT_PACKET midiData;
#endif

static USB_HANDLE USBRxHandle;



static USB_VOLATILE uint8_t msCounter;

typedef struct KEYPRESS KEYPRESS;

struct KEYPRESS {
    uint8_t note;
    uint8_t velocity;
    
    KEYPRESS* nextKeypress;
};

KEYPRESS* keypressBuffer;

typedef struct
{
    // BUFFER_STATE             TransferState;      // The transfer state of the endpoint
    uint8_t                 numOfMIDIPackets;   // Each USB Packet sent from a device has the possibility of holding more than one MIDI packet,
    uint8_t                 endpointIndex;                           // keep track of how many MIDI packets are within a USB packet (between 1 and 16, or 4 and 64 bytes)
    USB_AUDIO_MIDI_EVENT_PACKET*  bufferStart;        // The 2D buffer for the endpoint. There are MIDI_USB_BUFFER_SIZE USB buffers that are filled with numOfMIDIPackets
                                                //  MIDI packets. This allows for MIDI_USB_BUFFER_SIZE USB packets to be saved, with a possibility of up to 
                                                //  numOfMIDIPackets MIDI packets within each USB packet.
    USB_AUDIO_MIDI_EVENT_PACKET*  pBufReadLocation;   // Pointer to USB packet that is being read from
    USB_AUDIO_MIDI_EVENT_PACKET*  pBufWriteLocation;  // Pointer to USB packet that is being written to
}MIDI_EVENT_BUFFER;

MIDI_EVENT_BUFFER midi_event_buffer;
/*********************************************************************
* Function: void APP_DeviceAudioMIDIInitialize(void);
*
* Overview: Initializes the demo code
*
* PreCondition: None
*
* Input: None
*
* Output: None
*
********************************************************************/
void APP_DeviceAudioMIDIInitialize()
{
    USBRxHandle = NULL;

    msCounter = 0;

    //enable the HID endpoint
    USBEnableEndpoint(USB_DEVICE_AUDIO_MIDI_ENDPOINT,USB_OUT_ENABLED|USB_IN_ENABLED|USB_HANDSHAKE_ENABLED|USB_DISALLOW_SETUP);

    //Re-arm the OUT endpoint for the next packet
    USBRxHandle = USBRxOnePacket(USB_DEVICE_AUDIO_MIDI_ENDPOINT,midi_event_buffer.bufferStart->v,64);
    initializeMIDIEventBuffer();
}

/*********************************************************************
* Function: void APP_DeviceAudioMIDIInitialize(void);
*
* Overview: Initializes the demo code
*
* PreCondition: None
*
* Input: None
*
* Output: None
*
********************************************************************/
void APP_DeviceAudioMIDISOFHandler()
{
    if(msCounter != 0)
    {
        msCounter--;
    }
}


/*********************************************************************
* Function: void APP_DeviceAudioMIDITasks(void);
*
* Overview: Keeps the Custom HID demo running.
*
* PreCondition: The demo should have been initialized and started via
*   the APP_DeviceAudioMIDIInitialize() and APP_DeviceAudioMIDIStart() demos
*   respectively.
*
* Input: None
*
* Output: None
*
********************************************************************/
void APP_DeviceAudioMIDITasks()
{
    /* If the device is not configured yet, or the device is suspended, then
     * we don't need to run the demo since we can't send any data.
     */
    if( (USBGetDeviceState() < CONFIGURED_STATE) ||
        (USBIsDeviceSuspended() == true))
    {
        return;
    }

    if(!USBHandleBusy(USBRxHandle))
    {
        //We have received a USB frame from the host, it may contain multiple MIDI
        // packets
        //INSERT MIDI PROCESSING CODE HERE
        //Read data from handle
        //Parse into separate MIDI messages
        handleMIDIPackets();
        //clearBuffer();
        setOutputs();
        //setControlOutputs();
        //Get ready for next packet (this will overwrite the old data)
        USBRxHandle = USBRxOnePacket(USB_DEVICE_AUDIO_MIDI_ENDPOINT, midi_event_buffer.bufferStart->v, 64);
    }
}

void initializeMIDIEventBuffer()
{
    // Allocate 64 bytes for the midi packet buffer
    // sizeof(USB_AUDIO_MIDI_EVENT_PACKET) should be 4 bytes. Endpoint buffer is 64 bytes
    // Allocates memory of type USB_AUDIO_MIDI_EVENT_PACKET to buffer_start
    midi_event_buffer.bufferStart = malloc( sizeof(USB_AUDIO_MIDI_EVENT_PACKET) * 16);
    midi_event_buffer.pBufReadLocation = midi_event_buffer.bufferStart;
    midi_event_buffer.pBufWriteLocation = midi_event_buffer.bufferStart;
    midi_event_buffer.numOfMIDIPackets = 16; //64 byte endpoint buffer/4bytes per midi packet
    return;
}

void handleMIDIPackets()
{
    // Check to see if the buffer has any packets to be read
    if (midi_event_buffer.pBufReadLocation != midi_event_buffer.pBufWriteLocation)
    {
        int8_t midiPktNumber;
        USB_AUDIO_MIDI_EVENT_PACKET *midiPacket;

        // If so, then parse through the entire USB packet for each individual MIDI packet
        for(midiPktNumber = 0; midiPktNumber < midi_event_buffer.numOfMIDIPackets; midiPktNumber++)
        {
            if(midi_event_buffer.pBufReadLocation->Val == 0ul)
            {
                // If there's nothing in this MIDI packet, then skip the rest of the USB packet 
                midi_event_buffer.pBufReadLocation += midi_event_buffer.numOfMIDIPackets - midiPktNumber;
                break;
            }    
            else
            {
                midiPacket = midi_event_buffer.pBufReadLocation;
                handleMIDIPacket(midiPacket);
                midi_event_buffer.pBufReadLocation++;
            }
        }
        
        // reset pointers as we are done with the midi event buffer
        midi_event_buffer.pBufReadLocation = midi_event_buffer.bufferStart;
        midi_event_buffer.pBufWriteLocation = midi_event_buffer.bufferStart;
        
        //ensure that the buffer is reset
        /*
        if (midi_event_buffer.pBufReadLocation - midi_event_buffer.bufferStart
            >= midi_event_buffer.numOfMIDIPackets) {
            // If so, then loop it back to the beginning of the array
            midi_event_buffer.pBufReadLocation = midi_event_buffer.bufferStart;
        }
         * */

    }
    return;
}

void handleMIDIPacket(USB_AUDIO_MIDI_EVENT_PACKET* midi_event_packet)
{
    //Update relevant system state information here
        switch(midi_event_packet->CIN)
        {
            case MIDI_CIN_NOTE_ON:
                // Write to note buffer
                addKeypress(midi_event_packet->DATA_1, midi_event_packet->DATA_2);
                break;
            case MIDI_CIN_NOTE_OFF:
                // Remove from note buffer
                removeKeypress(midi_event_packet->DATA_1);
                break;
            case MIDI_CIN_CONTROL_CHANGE:
                // Determine channel and call DAC HAL
                break;
            default:
                break;
        }
        return;
}

static void clearBuffer() {
    //This is breaking the midi usb driver for some reason
    memset(midi_event_buffer.pBufWriteLocation, 0x00, bufferSize());
}

unsigned int bufferSize() {
    return midi_event_buffer.numOfMIDIPackets * sizeof(USB_AUDIO_MIDI_EVENT_PACKET);
}

void addKeypress(uint8_t note, uint8_t velocity) {
    KEYPRESS* keypressPointer = malloc(sizeof(KEYPRESS));
    KEYPRESS keypress = { note, velocity, keypressBuffer };
    *keypressPointer = keypress;
    keypressBuffer = keypressPointer;
}

void removeKeypress(uint8_t note) {
    KEYPRESS* previousKeypress = NULL;
    KEYPRESS* keypress = keypressBuffer;
    
    while(keypress != NULL) {
        if (keypress->note == note) {
            //If the most recent keypress is to be removed, point to the next one
            if (previousKeypress == NULL) {
                keypressBuffer = keypress->nextKeypress;
            } else { //Otherwise, point the previous keypress to the next one
                previousKeypress->nextKeypress = keypress->nextKeypress;
            }
            free(keypress);
            break;
        } else { //Increment the pointers
            previousKeypress = keypress;
            keypress = keypress->nextKeypress;
        }
    }
}

void setOutputs()
{
    // If the keypress buffer is not empty, we are currently holding a note and
    // the GATE LED should be set
    //MCP4728_Write_SingleChannel(1,4095);
    if(keypressBuffer != NULL)
    {
        //GATE_SetHigh();
        //int note_dec = noteToDecimal(keypressBuffer->note)
        //MCP4728_Write_SingleChannel(1,note_dec, );
        //Set output note on DAC
        //Set note velocity on DAC
    }
    else if(keypressBuffer == NULL)
    {
        //GATE_SetLow();
    }
    GATE_SetHigh();
}