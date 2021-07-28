#!../../bin/linux-x86_64/bl0-SE-ColeParmer

< envPaths

cd "${TOP}"

epicsEnvSet("STREAM_PROTOCOL_PATH", "$(CP_RS232)/protocol/")

## Register all support components
dbLoadDatabase "dbd/bl0-SE-ColeParmer.dbd"
bl0_SE_ColeParmer_registerRecordDeviceDriver pdbbase
drvAsynIPPortConfigure ("cp232","10.111.200.221:4001",0,0,0)

## Load record instances
dbLoadRecords "db/bl0-SE-ColeParmer.db"

## Set this to see messages from mySub
#var mySubDebug 1
#var streamDebug 1

######################################################
# Autosave

epicsEnvSet IOCNAME CP

epicsEnvSet SAVE_DIR /home/controls/var/$(IOCNAME)
save_restoreSet_Debug(0)

### status-PV prefix, so save_restore can find its status PV's.
save_restoreSet_status_prefix("BL0:SE:CP:")

set_requestfile_path("$(SAVE_DIR)")
set_savefile_path("$(SAVE_DIR)")

save_restoreSet_NumSeqFiles(3)
save_restoreSet_SeqPeriodInSeconds(600)
set_pass0_restoreFile("$(IOCNAME).sav")
set_pass1_restoreFile("$(IOCNAME).sav")

######################################################

cd "${TOP}/iocBoot/${IOC}"
iocInit

asynSetTraceMask("cp232",0,0x0)
asynSetTraceIOMask("cp232",0,0x0)

# Create request file and start periodic 'save'
epicsThreadSleep(5)
makeAutosaveFileFromDbInfo("$(SAVE_DIR)/$(IOCNAME).req", "autosaveFields")
create_monitor_set("$(IOCNAME).req", 5)

