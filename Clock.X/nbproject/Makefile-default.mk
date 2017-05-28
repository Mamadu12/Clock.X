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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ClockAssignment.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ClockAssignment.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=LCDdrive.c ADClib.c config.c interruptMyISR.c humidityReader.c screenConfigMode.c timeSettings.c alarmSettings.c tempSettings.c timeUpdate.c alarmUpdate.c mainDigitalClock.c TMR1Delay.c tempReader.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/LCDdrive.p1 ${OBJECTDIR}/ADClib.p1 ${OBJECTDIR}/config.p1 ${OBJECTDIR}/interruptMyISR.p1 ${OBJECTDIR}/humidityReader.p1 ${OBJECTDIR}/screenConfigMode.p1 ${OBJECTDIR}/timeSettings.p1 ${OBJECTDIR}/alarmSettings.p1 ${OBJECTDIR}/tempSettings.p1 ${OBJECTDIR}/timeUpdate.p1 ${OBJECTDIR}/alarmUpdate.p1 ${OBJECTDIR}/mainDigitalClock.p1 ${OBJECTDIR}/TMR1Delay.p1 ${OBJECTDIR}/tempReader.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/LCDdrive.p1.d ${OBJECTDIR}/ADClib.p1.d ${OBJECTDIR}/config.p1.d ${OBJECTDIR}/interruptMyISR.p1.d ${OBJECTDIR}/humidityReader.p1.d ${OBJECTDIR}/screenConfigMode.p1.d ${OBJECTDIR}/timeSettings.p1.d ${OBJECTDIR}/alarmSettings.p1.d ${OBJECTDIR}/tempSettings.p1.d ${OBJECTDIR}/timeUpdate.p1.d ${OBJECTDIR}/alarmUpdate.p1.d ${OBJECTDIR}/mainDigitalClock.p1.d ${OBJECTDIR}/TMR1Delay.p1.d ${OBJECTDIR}/tempReader.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/LCDdrive.p1 ${OBJECTDIR}/ADClib.p1 ${OBJECTDIR}/config.p1 ${OBJECTDIR}/interruptMyISR.p1 ${OBJECTDIR}/humidityReader.p1 ${OBJECTDIR}/screenConfigMode.p1 ${OBJECTDIR}/timeSettings.p1 ${OBJECTDIR}/alarmSettings.p1 ${OBJECTDIR}/tempSettings.p1 ${OBJECTDIR}/timeUpdate.p1 ${OBJECTDIR}/alarmUpdate.p1 ${OBJECTDIR}/mainDigitalClock.p1 ${OBJECTDIR}/TMR1Delay.p1 ${OBJECTDIR}/tempReader.p1

# Source Files
SOURCEFILES=LCDdrive.c ADClib.c config.c interruptMyISR.c humidityReader.c screenConfigMode.c timeSettings.c alarmSettings.c tempSettings.c timeUpdate.c alarmUpdate.c mainDigitalClock.c TMR1Delay.c tempReader.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/ClockAssignment.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=16F877A
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/LCDdrive.p1: LCDdrive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/LCDdrive.p1.d 
	@${RM} ${OBJECTDIR}/LCDdrive.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/LCDdrive.p1  LCDdrive.c 
	@-${MV} ${OBJECTDIR}/LCDdrive.d ${OBJECTDIR}/LCDdrive.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LCDdrive.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ADClib.p1: ADClib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/ADClib.p1.d 
	@${RM} ${OBJECTDIR}/ADClib.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ADClib.p1  ADClib.c 
	@-${MV} ${OBJECTDIR}/ADClib.d ${OBJECTDIR}/ADClib.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ADClib.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/config.p1: config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/config.p1.d 
	@${RM} ${OBJECTDIR}/config.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/config.p1  config.c 
	@-${MV} ${OBJECTDIR}/config.d ${OBJECTDIR}/config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/interruptMyISR.p1: interruptMyISR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/interruptMyISR.p1.d 
	@${RM} ${OBJECTDIR}/interruptMyISR.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/interruptMyISR.p1  interruptMyISR.c 
	@-${MV} ${OBJECTDIR}/interruptMyISR.d ${OBJECTDIR}/interruptMyISR.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/interruptMyISR.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/humidityReader.p1: humidityReader.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/humidityReader.p1.d 
	@${RM} ${OBJECTDIR}/humidityReader.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/humidityReader.p1  humidityReader.c 
	@-${MV} ${OBJECTDIR}/humidityReader.d ${OBJECTDIR}/humidityReader.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/humidityReader.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/screenConfigMode.p1: screenConfigMode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/screenConfigMode.p1.d 
	@${RM} ${OBJECTDIR}/screenConfigMode.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/screenConfigMode.p1  screenConfigMode.c 
	@-${MV} ${OBJECTDIR}/screenConfigMode.d ${OBJECTDIR}/screenConfigMode.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/screenConfigMode.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/timeSettings.p1: timeSettings.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/timeSettings.p1.d 
	@${RM} ${OBJECTDIR}/timeSettings.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/timeSettings.p1  timeSettings.c 
	@-${MV} ${OBJECTDIR}/timeSettings.d ${OBJECTDIR}/timeSettings.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/timeSettings.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/alarmSettings.p1: alarmSettings.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/alarmSettings.p1.d 
	@${RM} ${OBJECTDIR}/alarmSettings.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/alarmSettings.p1  alarmSettings.c 
	@-${MV} ${OBJECTDIR}/alarmSettings.d ${OBJECTDIR}/alarmSettings.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/alarmSettings.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/tempSettings.p1: tempSettings.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/tempSettings.p1.d 
	@${RM} ${OBJECTDIR}/tempSettings.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/tempSettings.p1  tempSettings.c 
	@-${MV} ${OBJECTDIR}/tempSettings.d ${OBJECTDIR}/tempSettings.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/tempSettings.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/timeUpdate.p1: timeUpdate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/timeUpdate.p1.d 
	@${RM} ${OBJECTDIR}/timeUpdate.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/timeUpdate.p1  timeUpdate.c 
	@-${MV} ${OBJECTDIR}/timeUpdate.d ${OBJECTDIR}/timeUpdate.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/timeUpdate.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/alarmUpdate.p1: alarmUpdate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/alarmUpdate.p1.d 
	@${RM} ${OBJECTDIR}/alarmUpdate.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/alarmUpdate.p1  alarmUpdate.c 
	@-${MV} ${OBJECTDIR}/alarmUpdate.d ${OBJECTDIR}/alarmUpdate.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/alarmUpdate.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mainDigitalClock.p1: mainDigitalClock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/mainDigitalClock.p1.d 
	@${RM} ${OBJECTDIR}/mainDigitalClock.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/mainDigitalClock.p1  mainDigitalClock.c 
	@-${MV} ${OBJECTDIR}/mainDigitalClock.d ${OBJECTDIR}/mainDigitalClock.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mainDigitalClock.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TMR1Delay.p1: TMR1Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/TMR1Delay.p1.d 
	@${RM} ${OBJECTDIR}/TMR1Delay.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/TMR1Delay.p1  TMR1Delay.c 
	@-${MV} ${OBJECTDIR}/TMR1Delay.d ${OBJECTDIR}/TMR1Delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/TMR1Delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/tempReader.p1: tempReader.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/tempReader.p1.d 
	@${RM} ${OBJECTDIR}/tempReader.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/tempReader.p1  tempReader.c 
	@-${MV} ${OBJECTDIR}/tempReader.d ${OBJECTDIR}/tempReader.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/tempReader.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/LCDdrive.p1: LCDdrive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/LCDdrive.p1.d 
	@${RM} ${OBJECTDIR}/LCDdrive.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/LCDdrive.p1  LCDdrive.c 
	@-${MV} ${OBJECTDIR}/LCDdrive.d ${OBJECTDIR}/LCDdrive.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LCDdrive.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ADClib.p1: ADClib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/ADClib.p1.d 
	@${RM} ${OBJECTDIR}/ADClib.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ADClib.p1  ADClib.c 
	@-${MV} ${OBJECTDIR}/ADClib.d ${OBJECTDIR}/ADClib.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ADClib.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/config.p1: config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/config.p1.d 
	@${RM} ${OBJECTDIR}/config.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/config.p1  config.c 
	@-${MV} ${OBJECTDIR}/config.d ${OBJECTDIR}/config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/interruptMyISR.p1: interruptMyISR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/interruptMyISR.p1.d 
	@${RM} ${OBJECTDIR}/interruptMyISR.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/interruptMyISR.p1  interruptMyISR.c 
	@-${MV} ${OBJECTDIR}/interruptMyISR.d ${OBJECTDIR}/interruptMyISR.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/interruptMyISR.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/humidityReader.p1: humidityReader.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/humidityReader.p1.d 
	@${RM} ${OBJECTDIR}/humidityReader.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/humidityReader.p1  humidityReader.c 
	@-${MV} ${OBJECTDIR}/humidityReader.d ${OBJECTDIR}/humidityReader.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/humidityReader.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/screenConfigMode.p1: screenConfigMode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/screenConfigMode.p1.d 
	@${RM} ${OBJECTDIR}/screenConfigMode.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/screenConfigMode.p1  screenConfigMode.c 
	@-${MV} ${OBJECTDIR}/screenConfigMode.d ${OBJECTDIR}/screenConfigMode.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/screenConfigMode.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/timeSettings.p1: timeSettings.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/timeSettings.p1.d 
	@${RM} ${OBJECTDIR}/timeSettings.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/timeSettings.p1  timeSettings.c 
	@-${MV} ${OBJECTDIR}/timeSettings.d ${OBJECTDIR}/timeSettings.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/timeSettings.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/alarmSettings.p1: alarmSettings.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/alarmSettings.p1.d 
	@${RM} ${OBJECTDIR}/alarmSettings.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/alarmSettings.p1  alarmSettings.c 
	@-${MV} ${OBJECTDIR}/alarmSettings.d ${OBJECTDIR}/alarmSettings.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/alarmSettings.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/tempSettings.p1: tempSettings.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/tempSettings.p1.d 
	@${RM} ${OBJECTDIR}/tempSettings.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/tempSettings.p1  tempSettings.c 
	@-${MV} ${OBJECTDIR}/tempSettings.d ${OBJECTDIR}/tempSettings.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/tempSettings.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/timeUpdate.p1: timeUpdate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/timeUpdate.p1.d 
	@${RM} ${OBJECTDIR}/timeUpdate.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/timeUpdate.p1  timeUpdate.c 
	@-${MV} ${OBJECTDIR}/timeUpdate.d ${OBJECTDIR}/timeUpdate.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/timeUpdate.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/alarmUpdate.p1: alarmUpdate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/alarmUpdate.p1.d 
	@${RM} ${OBJECTDIR}/alarmUpdate.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/alarmUpdate.p1  alarmUpdate.c 
	@-${MV} ${OBJECTDIR}/alarmUpdate.d ${OBJECTDIR}/alarmUpdate.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/alarmUpdate.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mainDigitalClock.p1: mainDigitalClock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/mainDigitalClock.p1.d 
	@${RM} ${OBJECTDIR}/mainDigitalClock.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/mainDigitalClock.p1  mainDigitalClock.c 
	@-${MV} ${OBJECTDIR}/mainDigitalClock.d ${OBJECTDIR}/mainDigitalClock.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mainDigitalClock.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TMR1Delay.p1: TMR1Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/TMR1Delay.p1.d 
	@${RM} ${OBJECTDIR}/TMR1Delay.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/TMR1Delay.p1  TMR1Delay.c 
	@-${MV} ${OBJECTDIR}/TMR1Delay.d ${OBJECTDIR}/TMR1Delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/TMR1Delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/tempReader.p1: tempReader.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/tempReader.p1.d 
	@${RM} ${OBJECTDIR}/tempReader.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/tempReader.p1  tempReader.c 
	@-${MV} ${OBJECTDIR}/tempReader.d ${OBJECTDIR}/tempReader.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/tempReader.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/ClockAssignment.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/ClockAssignment.X.${IMAGE_TYPE}.map  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"        -odist/${CND_CONF}/${IMAGE_TYPE}/ClockAssignment.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/ClockAssignment.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/ClockAssignment.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/ClockAssignment.X.${IMAGE_TYPE}.map  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -odist/${CND_CONF}/${IMAGE_TYPE}/ClockAssignment.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
