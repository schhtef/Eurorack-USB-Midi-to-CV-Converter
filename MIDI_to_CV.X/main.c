/**
  Generated main.c file from MPLAB Code Configurator

  @Company
    Microchip Technology Inc.

  @File Name
    main.c

  @Summary
    This is the generated main.c using PIC24 / dsPIC33 / PIC32MM MCUs.

  @Description
    This source file provides main entry point for system initialization and application code development.
    Generation Information :
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - 1.171.4
        Device            :  PIC24FJ32GU202
    The generated drivers are tested against the following:
        Compiler          :  XC16 v2.10
        MPLAB 	          :  MPLAB X v6.05
*/

/*
    (c) 2020 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/

/**
  Section: Included Files
*/
#include "mcc_generated_files/system.h"

#include "app_device_audio_midi.h"
#include "app_led_usb_status.h"

#include "mcc_generated_files/usb/usb_device.h"
#include "usb_device_midi.h"
#include "mcp4728.h"

/*
                         Main application
 */
int main(void)
{
    SYSTEM_STATE system_state = SYSTEM_STATE_USB_START;
    SYSTEM_Initialize();
    USB_INDICATION_SetLow(); //Make sure the LED is off until we know USB is configured
    //APP_DeviceAudioMIDIInitialize();
    LDAC_SetLow();
    GATE_SetLow();
    
    
    while(1)
    {
        USBDeviceTasks();
        if((USBGetDeviceState() < CONFIGURED_STATE) ||
               (USBIsDeviceSuspended() == true))
        { 
            system_state = SYSTEM_STATE_USB_SUSPEND;
            
            //Either the device is not configured or we are suspended,
            // so we don't want to execute any USB related application code
            continue;   //go back to the top of the while loop
        }
        else
        {
            system_state = SYSTEM_STATE_USB_CONFIGURED;
            
            // Parse USB packets into MIDI packets and extract relevant information
            APP_DeviceAudioMIDITasks();
        }
        
        switch(system_state){
            case SYSTEM_STATE_USB_SUSPEND:
                USB_INDICATION_SetLow(); //Turn off the USB indicator if device is suspended
                break;
            case SYSTEM_STATE_USB_CONFIGURED:
                USB_INDICATION_SetHigh(); // Turn on the USB indicator if it is configured
                break;
            default:
                break;
        }  
    }//end while
    return 1;
}
/**
 End of File
*/
