/* 
 * File:mcp4728.h
 * Author: Stefan Bichlmaier
 * Comments:
 * Revision history: 
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef MCP4728_H
#define	MCP4728_H
#include <xc.h> // include processor files - each processor file is guarded. 
#include <i2c1.h>
#define SLAVE_I2C_GENERIC_RETRY_MAX           100
#define SLAVE_I2C_GENERIC_DEVICE_TIMEOUT      50   // define slave timeout 

typedef struct
{
	/* 4 bits, 0 = VDD, 1 = integral 2.048V, 0000ABCD*/
	uint8_t		channelVref;
	/* 4 bits, 0 = unity gain, 1 = x2 gain, 0000ABCD*/
	uint8_t		channel_Gain;
	/* 4 12bit numbers specifying the desired initial output values */
	uint16_t	channel_Val[4];
}dacChannelConfig;

void MCP4728_Write_VRef_Select(dacChannelConfig config);
void MCP4728_Write_Gain_Select (dacChannelConfig config);
void MCP4728_Write_PWRDWN_Select(uint8_t command);
void MCP4728_Write_GeneralCall(uint8_t command);
void MCP4728_Write_AllChannels_Same(uint16_t output);
void MCP4728_Write_AllChannels_Diff(dacChannelConfig output);
void MCP4728_Write_SingleChannel(uint8_t channel, uint16_t output);
void MCP4728_Init(dacChannelConfig output);
void MCP4728_Write(uint8_t address, uint8_t *data, uint16_t length);

/* Private defines -----------------------------------------------------------*/
/* Define MCP4728 Commands */

#define MCP4728_CMD_FASTWRITE		0x00
#define MCP4728_CMD_DACWRITE_MULTI	0x40
#define MCP4728_CMD_DACWRITE_SEQ	0x50
#define MCP4728_CMD_DACWRITE_SINGLE	0x58
#define MCP4728_CMD_ADDRWRITE		0x60
#define	MCP4728_CMD_VREFWRITE		0x80
#define MCP4728_CMD_GAINWRITE		0xC0
#define MCP4728_CMD_PWRDWNWRITE		0xA0

#define MCP4728_BASEADDR			0x60<<1 //Also just 0xC0?

#define MCP4728_VREF_VDD				0x0
#define MCP4728_VREF_INTERNAL		0x1

#define MCP4728_GAIN_1				0x0
#define MCP4728_GAIN_2				0x1

#define MCP4728_CHANNEL_A			0x0
#define MCP4728_CHANNEL_B			0x1
#define MCP4728_CHANNEL_C			0x2
#define MCP4728_CHANNEL_D			0x3

#define MCP4728_PWRDWN_NORMAL		0x0
#define MCP4728_PWRDWN_1			0x1
#define MCP4728_PWRDWN_2			0x2
#define MCP4728_PWRDWN_3			0x3

#define MCP4728_UDAC_UPLOAD			0x1
#define MCP4728_UDAC_NOLOAD			0x0

#define MCP4728_GENERAL_RESET		0x06
#define MCP4728_GENERAL_WAKEUP		0x09
#define MCP4728_GENERAL_SWUPDATE	0x08
#define MCP4728_GENERAL_READADDR	0x0C

#endif