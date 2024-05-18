#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-XC16_24FJ256GA110.mk)" "nbproject/Makefile-local-XC16_24FJ256GA110.mk"
include nbproject/Makefile-local-XC16_24FJ256GA110.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=XC16_24FJ256GA110
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/MIDI_to_CV.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/MIDI_to_CV.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/usb/usb_device_generic.c mcc_generated_files/usb/usb_device_events.c mcc_generated_files/usb/usb_descriptors.c mcc_generated_files/usb/usb_hal_16bit.c mcc_generated_files/usb/usb_device.c usb_events.c mcc_generated_files/traps.c mcc_generated_files/i2c1.c mcc_generated_files/clock.c mcc_generated_files/system.c mcc_generated_files/pin_manager.c mcc_generated_files/mcc.c mcc_generated_files/interrupt_manager.c configuration_bits.c interrupts.c main.c app_device_audio_midi.c app_led_usb_status.c led.c mcp4728.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o ${OBJECTDIR}/mcc_generated_files/usb/usb_hal_16bit.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/usb_events.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/configuration_bits.o ${OBJECTDIR}/interrupts.o ${OBJECTDIR}/main.o ${OBJECTDIR}/app_device_audio_midi.o ${OBJECTDIR}/app_led_usb_status.o ${OBJECTDIR}/led.o ${OBJECTDIR}/mcp4728.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_hal_16bit.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d ${OBJECTDIR}/usb_events.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/i2c1.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/configuration_bits.o.d ${OBJECTDIR}/interrupts.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/app_device_audio_midi.o.d ${OBJECTDIR}/app_led_usb_status.o.d ${OBJECTDIR}/led.o.d ${OBJECTDIR}/mcp4728.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o ${OBJECTDIR}/mcc_generated_files/usb/usb_hal_16bit.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/usb_events.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/configuration_bits.o ${OBJECTDIR}/interrupts.o ${OBJECTDIR}/main.o ${OBJECTDIR}/app_device_audio_midi.o ${OBJECTDIR}/app_led_usb_status.o ${OBJECTDIR}/led.o ${OBJECTDIR}/mcp4728.o

# Source Files
SOURCEFILES=mcc_generated_files/usb/usb_device_generic.c mcc_generated_files/usb/usb_device_events.c mcc_generated_files/usb/usb_descriptors.c mcc_generated_files/usb/usb_hal_16bit.c mcc_generated_files/usb/usb_device.c usb_events.c mcc_generated_files/traps.c mcc_generated_files/i2c1.c mcc_generated_files/clock.c mcc_generated_files/system.c mcc_generated_files/pin_manager.c mcc_generated_files/mcc.c mcc_generated_files/interrupt_manager.c configuration_bits.c interrupts.c main.c app_device_audio_midi.c app_led_usb_status.c led.c mcp4728.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-XC16_24FJ256GA110.mk ${DISTDIR}/MIDI_to_CV.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ32GU202
MP_LINKER_FILE_OPTION=,--script=p24FJ32GU202.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o: mcc_generated_files/usb/usb_device_generic.c  .generated_files/flags/XC16_24FJ256GA110/a411f65e46fd86ee1470580184ef40fb95648b61 .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/usb/usb_device_generic.c  -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o: mcc_generated_files/usb/usb_device_events.c  .generated_files/flags/XC16_24FJ256GA110/2285de8122f19d8f961efa133e475c4b21d7f87e .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/usb/usb_device_events.c  -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o: mcc_generated_files/usb/usb_descriptors.c  .generated_files/flags/XC16_24FJ256GA110/d721a1ed21c3ffb9509dd561654dd7ea0d7982e2 .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/usb/usb_descriptors.c  -o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/usb/usb_hal_16bit.o: mcc_generated_files/usb/usb_hal_16bit.c  .generated_files/flags/XC16_24FJ256GA110/a5dc008eb127f417c2c02ee699925c5d44ae68da .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hal_16bit.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hal_16bit.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/usb/usb_hal_16bit.c  -o ${OBJECTDIR}/mcc_generated_files/usb/usb_hal_16bit.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_hal_16bit.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/XC16_24FJ256GA110/bafaec4248894e8bcd0d2f1e6ec428e400f3c92c .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/usb/usb_device.c  -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/usb_events.o: usb_events.c  .generated_files/flags/XC16_24FJ256GA110/d33b2318e1c9c7b9a1e800a2bc9ef9bf2c6a1936 .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_events.o.d 
	@${RM} ${OBJECTDIR}/usb_events.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  usb_events.c  -o ${OBJECTDIR}/usb_events.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/usb_events.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/XC16_24FJ256GA110/7581e607dfb8d5584ce51ca7a07e4dfd66524c44 .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/XC16_24FJ256GA110/36d30586381b4af561cbdf897b917dd07405e5c8 .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/XC16_24FJ256GA110/bf2169ea698d737ac716ad7425c3e114611bb1fb .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/XC16_24FJ256GA110/f4dc28a4b7ea264d533e768ea072ffca577bbc9a .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/XC16_24FJ256GA110/4bbb6da0f8f38dec6edcaa5006d161039ca3d862 .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/XC16_24FJ256GA110/206bae802b99e931ae1e8d823575aff0f5c25ff6 .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/XC16_24FJ256GA110/91c5599976e209e1df50f456d0f5454e0a5f687b .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/configuration_bits.o: configuration_bits.c  .generated_files/flags/XC16_24FJ256GA110/e7ec1caf2f3ab6ccc278d0f44ce3ddb826e190ef .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/configuration_bits.o.d 
	@${RM} ${OBJECTDIR}/configuration_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  configuration_bits.c  -o ${OBJECTDIR}/configuration_bits.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/configuration_bits.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/interrupts.o: interrupts.c  .generated_files/flags/XC16_24FJ256GA110/1a6c9113c46b2d51333da5671ccbaeacbced4f64 .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/interrupts.o.d 
	@${RM} ${OBJECTDIR}/interrupts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  interrupts.c  -o ${OBJECTDIR}/interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/interrupts.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/XC16_24FJ256GA110/8c73b86dc69732eb740ee180e22c43571a8ff04f .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/app_device_audio_midi.o: app_device_audio_midi.c  .generated_files/flags/XC16_24FJ256GA110/21cbf918ca8355a6171d8d813f3afcf43ccf1aae .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app_device_audio_midi.o.d 
	@${RM} ${OBJECTDIR}/app_device_audio_midi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  app_device_audio_midi.c  -o ${OBJECTDIR}/app_device_audio_midi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/app_device_audio_midi.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/app_led_usb_status.o: app_led_usb_status.c  .generated_files/flags/XC16_24FJ256GA110/4b471fd06d52899e1bc26cb27c0bc0c41e7b22a1 .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app_led_usb_status.o.d 
	@${RM} ${OBJECTDIR}/app_led_usb_status.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  app_led_usb_status.c  -o ${OBJECTDIR}/app_led_usb_status.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/app_led_usb_status.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/led.o: led.c  .generated_files/flags/XC16_24FJ256GA110/282959c9f5f3d31e670e13ff704cb3a0d411985d .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/led.o.d 
	@${RM} ${OBJECTDIR}/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  led.c  -o ${OBJECTDIR}/led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/led.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcp4728.o: mcp4728.c  .generated_files/flags/XC16_24FJ256GA110/31119f55b913edd42a74d9fb30945168b3837880 .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mcp4728.o.d 
	@${RM} ${OBJECTDIR}/mcp4728.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcp4728.c  -o ${OBJECTDIR}/mcp4728.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcp4728.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o: mcc_generated_files/usb/usb_device_generic.c  .generated_files/flags/XC16_24FJ256GA110/ece058a0911bea83f0d926fc924a31f0c7f30583 .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/usb/usb_device_generic.c  -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o: mcc_generated_files/usb/usb_device_events.c  .generated_files/flags/XC16_24FJ256GA110/c110ccd0413b58e32faaa5c25645a05e8c8fd572 .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/usb/usb_device_events.c  -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o: mcc_generated_files/usb/usb_descriptors.c  .generated_files/flags/XC16_24FJ256GA110/ee670e35b4e83fca1fca69c66e20c692cfbf1a19 .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/usb/usb_descriptors.c  -o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/usb/usb_hal_16bit.o: mcc_generated_files/usb/usb_hal_16bit.c  .generated_files/flags/XC16_24FJ256GA110/fb7f6e97353c8eb42701360bd3cedfd616db5c35 .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hal_16bit.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hal_16bit.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/usb/usb_hal_16bit.c  -o ${OBJECTDIR}/mcc_generated_files/usb/usb_hal_16bit.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_hal_16bit.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/XC16_24FJ256GA110/e73e2b5ad7709a611a70cc77d9ff67ede6b7886c .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/usb/usb_device.c  -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/usb_events.o: usb_events.c  .generated_files/flags/XC16_24FJ256GA110/8f02532a37cd2a5a45deb40a496767fe2d33fc38 .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_events.o.d 
	@${RM} ${OBJECTDIR}/usb_events.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  usb_events.c  -o ${OBJECTDIR}/usb_events.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/usb_events.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/XC16_24FJ256GA110/9e65947d29c88ac4b498e7eb5b5f117305b6e18f .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/XC16_24FJ256GA110/c5d7c8cf999326f189ec580e3a44051f3f5d1acc .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/XC16_24FJ256GA110/e7885237a34b05fa9a504354c56ed5fd97481bfb .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/XC16_24FJ256GA110/52a25da818e09f774f3b157f841e5d15907f2f50 .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/XC16_24FJ256GA110/2490f51abf64c932d202d91ad3454a31cdd49d5f .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/XC16_24FJ256GA110/97be06b2dd8f5444894af13da28327de544db696 .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/XC16_24FJ256GA110/80f9cfbc276d94d655115fb7303916a8e57f1716 .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/configuration_bits.o: configuration_bits.c  .generated_files/flags/XC16_24FJ256GA110/c9e7f8d7c6605b95dc058792d1eab35446507c3f .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/configuration_bits.o.d 
	@${RM} ${OBJECTDIR}/configuration_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  configuration_bits.c  -o ${OBJECTDIR}/configuration_bits.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/configuration_bits.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/interrupts.o: interrupts.c  .generated_files/flags/XC16_24FJ256GA110/4391e545564b310d8ea7546c0aeafe9095977fad .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/interrupts.o.d 
	@${RM} ${OBJECTDIR}/interrupts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  interrupts.c  -o ${OBJECTDIR}/interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/interrupts.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/XC16_24FJ256GA110/c0ae1d72533d610aa3cf4dfaab043a1c8f4b3414 .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/app_device_audio_midi.o: app_device_audio_midi.c  .generated_files/flags/XC16_24FJ256GA110/fa9143a23fc6b8af76a1f0c564403d623e0b2872 .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app_device_audio_midi.o.d 
	@${RM} ${OBJECTDIR}/app_device_audio_midi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  app_device_audio_midi.c  -o ${OBJECTDIR}/app_device_audio_midi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/app_device_audio_midi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/app_led_usb_status.o: app_led_usb_status.c  .generated_files/flags/XC16_24FJ256GA110/6a7ac9284a581756db1734756ab7cfb06e4347c3 .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app_led_usb_status.o.d 
	@${RM} ${OBJECTDIR}/app_led_usb_status.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  app_led_usb_status.c  -o ${OBJECTDIR}/app_led_usb_status.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/app_led_usb_status.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/led.o: led.c  .generated_files/flags/XC16_24FJ256GA110/9d89b459b3342c9c1ccf7eecc9f82941101acf83 .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/led.o.d 
	@${RM} ${OBJECTDIR}/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  led.c  -o ${OBJECTDIR}/led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/led.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcp4728.o: mcp4728.c  .generated_files/flags/XC16_24FJ256GA110/b46ba0ca66285f049318256d7b97cd80d7f3e126 .generated_files/flags/XC16_24FJ256GA110/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mcp4728.o.d 
	@${RM} ${OBJECTDIR}/mcp4728.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcp4728.c  -o ${OBJECTDIR}/mcp4728.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcp4728.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/MIDI_to_CV.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/MIDI_to_CV.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/MIDI_to_CV.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/MIDI_to_CV.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_XC16_24FJ256GA110=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/MIDI_to_CV.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
