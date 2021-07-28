TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS BELOW HERE
#
# Build the IOC application
PROD_IOC = bl0-SE-ColeParmer

# bl0-SE-ColeParmer.dbd will be created and installed
DBD += bl0-SE-ColeParmer.dbd

# bl0-SE-ColeParmer.dbd will include these files:
bl0-SE-ColeParmer_DBD += base.dbd
bl0-SE-ColeParmer_DBD += asyn.dbd
bl0-SE-ColeParmer_DBD += drvAsynIPPort.dbd
bl0-SE-ColeParmer_DBD += stream.dbd
bl0-SE-ColeParmer_DBD += asSupport.dbd
bl0-SE-ColeParmer_DBD += busySupport.dbd
bl0-SE-ColeParmer_DBD += CP-RS232.dbd

# Build the main IOC entry point where needed
bl0-SE-ColeParmer_SRCS_DEFAULT += bl0-SE-ColeParmerMain.cpp
bl0-SE-ColeParmer_SRCS_vxWorks += -nil-

bl0-SE-ColeParmer_LIBS += asyn
bl0-SE-ColeParmer_LIBS += stream
bl0-SE-ColeParmer_LIBS += autosave
bl0-SE-ColeParmer_LIBS += busy

# bl0-SE-ColeParmer_registerRecordDeviceDriver.cpp derives from bl0-SE-ColeParmer.dbd
bl0-SE-ColeParmer_SRCS += bl0-SE-ColeParmer_registerRecordDeviceDriver.cpp

# Finally link IOC to the EPICS Base libraries
bl0-SE-ColeParmer_LIBS += $(EPICS_BASE_IOC_LIBS)

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD EXTRA GNUMAKE RULES BELOW HERE

