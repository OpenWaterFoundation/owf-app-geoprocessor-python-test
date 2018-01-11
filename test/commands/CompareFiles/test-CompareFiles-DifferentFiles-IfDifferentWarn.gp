StartLog(LogFile="results/test-CompareFiles-DifferentFiles-IfDifferentWarn.gp.log")
# Test comparing different files
# - generate a warning when the files are different
#@expectedStatus Warning
CompareFiles(InputFile1="data/a1.txt",InputFile2="data/b1.txt",IfDifferent="Warn")
