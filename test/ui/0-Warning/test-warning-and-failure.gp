StartLog(LogFile="results/test-Message.gp.log")
# Test printing a message
# - generate different status so UI display can be tested
#@expectedStatus=Failure
Message(Message="This command generated a warning.",CommandStatus="WARNING")
Message(Message="This command generated a failure.",CommandStatus="FAILURE")
Message(Message="This command generated a success.",CommandStatus="SUCCESS")
Message(Message="This command generated a warning.",CommandStatus="WARNING")
Message(Message="This command generated a failure.",CommandStatus="FAILURE")
Message(Message="This command generated a success.",CommandStatus="SUCCESS")
Message(Message="This command generated a warning.",CommandStatus="WARNING")
Message(Message="This command generated a failure.",CommandStatus="FAILURE")
Message(Message="This command generated a success.",CommandStatus="SUCCESS")
