#!../../bin/rhel9-x86_64/motorSim
# The is the ASYN example for communication to 4 simulated motors
# "#!" marks lines that can be uncommented.

< envPaths

dbLoadDatabase("$(TOP)/dbd/motorSim.dbd")
motorSim_registerRecordDeviceDriver(pdbbase)

dbLoadTemplate("motor.substitutions")

motorSimCreateController("motorSim1", 16)
#asynSetTraceIOMask("motorSim1", 0, HEX)
#asynSetTraceMask("motorSim1", 0, ERROR|FLOW|DRIVER)

# motorSimConfigAxis(port, axis, lowLimit, highLimit, home, start)
motorSimConfigAxis("motorSim1", 0, 20000, -20000,  500, 0)
motorSimConfigAxis("motorSim1", 1, 20000, -20000, 1500, 0)
motorSimConfigAxis("motorSim1", 2, 20000, -20000, 2500, 0)
motorSimConfigAxis("motorSim1", 3, 20000, -20000, 3000, 0)
motorSimConfigAxis("motorSim1", 4, 20000, -20000,  500, 0)
motorSimConfigAxis("motorSim1", 5, 20000, -20000, 1500, 0)
motorSimConfigAxis("motorSim1", 6, 20000, -20000, 2500, 0)
motorSimConfigAxis("motorSim1", 7, 20000, -20000, 3000, 0)

motorSimConfigAxis("motorSim1", 8, 20000, -20000,  500, 0)
motorSimConfigAxis("motorSim1", 9, 20000, -20000, 1500, 0)
motorSimConfigAxis("motorSim1", 10, 20000, -20000, 2500, 0)
motorSimConfigAxis("motorSim1", 11, 20000, -20000, 3000, 0)
motorSimConfigAxis("motorSim1", 12, 20000, -20000,  500, 0)
motorSimConfigAxis("motorSim1", 13, 20000, -20000, 1500, 0)
motorSimConfigAxis("motorSim1", 14, 20000, -20000, 2500, 0)
motorSimConfigAxis("motorSim1", 15, 20000, -20000, 3000, 0)

iocInit

## motorUtil (allstop & alldone)
motorUtilInit("motorSim:")

# Boot complete

