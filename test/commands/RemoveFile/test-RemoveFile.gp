# Test removing a file
StartLog(LogFile="results/test-RemoveFile.gp.log")
# Uncomment the following line to regenerate expected results
CopyFile(SourceFile="data/testfile.txt",DestinationFile="results/test-RemoveFile-out.txt")
RemoveFile(SourceFile="results/test-RemoveFile-out.txt")
