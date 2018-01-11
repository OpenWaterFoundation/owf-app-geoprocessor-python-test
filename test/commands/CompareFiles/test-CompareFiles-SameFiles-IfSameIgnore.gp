StartLog(LogFile="results/test-CompareFiles-SameFiles-IfSameIgnore.gp.log")
# Test comparing same files
# - ignore when the files are same
CompareFiles(InputFile1="data/a1.txt",InputFile2="data/a1.txt",IfSame="Ignore")
