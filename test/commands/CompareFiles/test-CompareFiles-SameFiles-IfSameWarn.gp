StartLog(LogFile="results/test-CompareFiles-SameFiles-IfSameWarn.gp.log")
# Test comparing same files
# - generate warning when the files are same
#@expectedStatus Warning
CompareFiles(InputFile1="data/a1.txt",InputFile2="data/a1.txt",IfSame="Warn")
