StartLog(LogFile="results/test-Exit.gp.log")
# Test evaluating Exit command
#
# Use an Exit command so as to not execute the following commands.
Exit()
#
# Additional commands after Exit that would trigger an error
Message(Message="This command generates an failure if executed",CommandStatus="FAILURE")