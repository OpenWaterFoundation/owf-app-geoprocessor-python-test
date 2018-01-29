StartLog(LogFile="results/test-CompareFiles-1Diff-AllowedDiffCount1-IfDifferentWarn.gp.log")
# Test comparing files that differ by 1 line
# - generate a warning when the files are different
# - but allow 1 difference so no warning is expected
#@expectedStatus Warning
CompareFiles(InputFile1="data/c1.txt",InputFile2="data/c2.txt",AllowedDiffCount="1",IfDifferent="Warn")
