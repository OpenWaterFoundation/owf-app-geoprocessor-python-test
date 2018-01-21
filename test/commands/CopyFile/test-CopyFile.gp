StartLog(LogFile="results/test-CopyFile.gp.log")
# Test copying a file
RemoveFile(SourceFile="results/test-CopyFile-out.txt",IfSourceFileNotFound="Ignore")
# Uncomment the following line to regenerate expected results
CopyFile(SourceFile="data/testfile.txt",DestinationFile="expected-results/test-CopyFile-out.txt")
CopyFile(SourceFile="data/testfile.txt",DestinationFile="results/test-CopyFile-out.txt")
# Compare the results
#CompareFiles(InputFile1="expected-results/test-CopyFile-out.txt",InputFile2="results/test-CopyFile-out.txt",IfDifferent="Warn")
