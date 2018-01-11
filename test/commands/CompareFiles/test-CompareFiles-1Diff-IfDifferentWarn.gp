StartLog(LogFile="results/test-CompareFiles-1Diff-IfDifferentWarn.gp.log")
# Test comparing files that differ by 1 line
# - generate a warning when the files are different
#@expectedStatus Warning
CompareFiles(InputFile1="data/c1.txt",InputFile2="data/c2.txt",IfDifferent="Warn")
