TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
# ADD MACRO DEFINITIONS AFTER THIS LINE


#=============================
# Build the IOC support library
PROD_IOC = CP-RS232

# CP-RS232.dbd will be created and installed
DBD += CP-RS232.dbd

# CP-RS232.dbd will be made up from these files:
CP-RS232_DBD += base.dbd

# CP-RS232_registerRecordDeviceDriver.cpp derives from CP-RS232.dbd
CP-RS232_SRCS += CP-RS232_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
CP-RS232_SRCS_DEFAULT += CP-RS232Main.cpp
CP-RS232_SRCS_vxWorks += -nil-

# Finally link to the EPICS Base libraries
CP-RS232_LIBS += $(EPICS_BASE_IOC_LIBS)

#=============================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

