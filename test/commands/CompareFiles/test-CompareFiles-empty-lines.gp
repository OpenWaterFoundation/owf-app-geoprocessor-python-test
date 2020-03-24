StartLog(LogFile="results/test-CompareFiles-empty-lines.gp.log")
# Test comparing files with empty lines
# - there should be two differences
#@expectedStatus Warning
CompareFiles(InputFile1="data/d1-empty-lines.txt",InputFile2="data/d2-empty-lines.txt",IfDifferent="Warn")
