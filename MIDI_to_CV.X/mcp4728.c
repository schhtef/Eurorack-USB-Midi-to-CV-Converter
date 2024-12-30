/*
 * File:   mcp4728.c
 * Author: Stefan
 *
 * Created on January 22, 2024, 7:51 PM
 */


#include "xc.h"
#include "mcp4728.h"
#include "mcc_generated_files/pin_manager.h"

void MCP4728_Write_VRef_Select(dacChannelConfig config){
	uint8_t data = config.channelVref | (MCP4728_CMD_VREFWRITE);
	//HAL_StatusTypeDef ret;
	//ret = HAL_I2C_Master_Transmit(I2CHandler, MCP4728_BASEADDR, data, sizeof(data), HAL_MAX_DELAY);
	MCP4728_Write(MCP4728_BASEADDR, &data, sizeof(data));
}

void MCP4728_Write_Gain_Select(dacChannelConfig config){
	uint8_t data = config.channel_Gain | (MCP4728_CMD_GAINWRITE);
	//HAL_StatusTypeDef ret;
	//ret = HAL_I2C_Master_Transmit(I2CHandler, MCP4728_BASEADDR, data, sizeof(data), HAL_MAX_DELAY);
	MCP4728_Write(MCP4728_BASEADDR, &data, sizeof(data));
}
void MCP4728_Write_PWRDWN_Select(uint8_t command){
	uint8_t data[2];
	data[0] = MCP4728_CMD_PWRDWNWRITE | command<<2 | command;
	data[1] = (command << 6 |command << 4) & 0xF0 ;
	//HAL_StatusTypeDef ret;
	//ret = HAL_I2C_Master_Transmit(I2CHandler, MCP4728_BASEADDR, data, sizeof(data), HAL_MAX_DELAY);
    MCP4728_Write(MCP4728_BASEADDR, data, sizeof(data));
}

void MCP4728_Write_AllChannels_Same(uint16_t output)
{
	uint8_t buf[8];
	uint8_t lowByte = output & 0xff;
	uint8_t highByte = (output >> 8);
	for(int i = 0; i<8; i = i+2){
		buf[i] = 0x0f&highByte;
		buf[i+1] = lowByte;
	}
	//HAL_I2C_Master_Transmit(I2CHandler, MCP4728_BASEADDR, buf, sizeof(buf), HAL_MAX_DELAY);
    MCP4728_Write(MCP4728_BASEADDR, buf, sizeof(buf));
	MCP4728_Write_GeneralCall(MCP4728_GENERAL_SWUPDATE);
}

void MCP4728_Write_AllChannels_Diff(dacChannelConfig output)
{
	uint8_t buf[8];
	for(uint8_t i = 0; i < 4; i++){
		uint8_t lowByte = output.channel_Val[i] & 0xff;
		uint8_t highByte = (output.channel_Val[i] >> 8);
		buf[i*2] =  0x0f&highByte;
		buf[(i*2)+1] = lowByte;
	}
	//HAL_I2C_Master_Transmit(I2CHandler, MCP4728_BASEADDR, buf, sizeof(buf), HAL_MAX_DELAY);
    MCP4728_Write(MCP4728_BASEADDR, buf, sizeof(buf));
	MCP4728_Write_GeneralCall(MCP4728_GENERAL_SWUPDATE);
}

void MCP4728_Write_SingleChannel(uint8_t channel, uint16_t output)
{
	uint8_t buf[3];
	uint8_t lowByte = output & 0xff;
	uint8_t highByte = (output >> 8);
	buf[0] = MCP4728_CMD_DACWRITE_SINGLE | (channel<<1);
	buf[1] = (0<<7) | (channel<<5) | highByte;
	buf[2] = lowByte;
	//HAL_I2C_Master_Transmit(I2CHandler, MCP4728_BASEADDR, buf, sizeof(buf), HAL_MAX_DELAY);
    MCP4728_Write(MCP4728_BASEADDR, buf, sizeof(buf));
	MCP4728_Write_GeneralCall(MCP4728_GENERAL_SWUPDATE);
}

void MCP4728_Init(dacChannelConfig output){
	MCP4728_Write_GeneralCall(MCP4728_GENERAL_RESET);
	MCP4728_Write_GeneralCall(MCP4728_GENERAL_WAKEUP);
	uint8_t buf[9];
	buf[0] = MCP4728_CMD_DACWRITE_SEQ;
	for(uint8_t i = 1; i <= 4; i++){
		buf[(i*2)+1] = 0x00;
		buf[(i*2)] = (0 << 7) | ((i-1)<<4) | 0x0;
	}
	//HAL_I2C_Master_Transmit(I2CHandler, MCP4728_BASEADDR, buf, sizeof(buf), HAL_MAX_DELAY);
    MCP4728_Write(MCP4728_BASEADDR, buf, sizeof(buf));
	MCP4728_Write_GeneralCall(MCP4728_GENERAL_SWUPDATE);
}

void MCP4728_Write_GeneralCall(uint8_t command)
{
	//HAL_I2C_Master_Transmit(I2CHandler, 0x00, command, 1, HAL_MAX_DELAY);
    MCP4728_Write(0x00, &command, 1);
}

//Wraps I2C1_MasterWrite() in some timeout logic
void MCP4728_Write(uint8_t address, uint8_t *data, uint16_t length){
    
    uint16_t timeOut, slaveTimeOut;
    timeOut = 0;
    slaveTimeOut = 0;
    I2C1_MESSAGE_STATUS status = I2C1_MESSAGE_PENDING;
    /*I2C1_MasterWrite(  data,
                                length,
                                address >> 1,
                                &status);
    */
    while(status != I2C1_MESSAGE_FAIL)
    {
        // write data to MCP4728
        I2C1_MasterWrite(  data,
                                length,
                                address,
                                &status);
        
        while(status == I2C1_MESSAGE_PENDING) 
        {
            // add some delay here
            // timeout checking
            // check for max retry and skip this byte
            if (slaveTimeOut == SLAVE_I2C_GENERIC_DEVICE_TIMEOUT)
                break;
            else
                slaveTimeOut++;
        } 
        if (status == I2C1_MESSAGE_COMPLETE){
            break;
        }
        if (status == I2C1_DATA_NO_ACK){
            
        }
        // if status is  I2C1_MESSAGE_ADDRESS_NO_ACK,
        //               or I2C1_DATA_NO_ACK,
        // The device may be busy and needs more time for the last
        // write so we can retry writing the data, this is why we
        // use a while loop here

        // check for max retry and skip this byte
        if (timeOut == SLAVE_I2C_GENERIC_RETRY_MAX)
            break;
        else
            timeOut++;
        
        if (status == I2C1_MESSAGE_FAIL)
        {
            break;
        }
    }
     


}