StartLog(LogFile="results/test-Exit.gp.log")
# Test evaluating String conditions in various combinations
SetProperty(PropertyName="StringPropertyZ",PropertyType="str",PropertyValue="Z")
# Uncomment the next command to regenerate expected results
# WritePropertiesToFile(OutputFile="expected-results/test-Exit-out.txt")
WritePropertiesToFile(OutputFile="results/test-Exit-out.txt")
CompareFiles(InputFile1="expected-results/test-Exit-out.txt",InputFile2="results/test-Exit-out.txt",IfDifferent="Warn")
#
# Use an Exit command so as to not execute the following commands.
Exit()
#
# Additional commands after Exit that would trigger an error
Message(Message="This command generates an failure if executed",CommandStatus="FAILURE")