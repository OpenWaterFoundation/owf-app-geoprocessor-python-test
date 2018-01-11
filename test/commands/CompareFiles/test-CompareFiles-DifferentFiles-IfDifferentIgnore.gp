StartLog(LogFile="results/test-CompareFiles-DifferentFiles-IfDifferentIgnore.gp.log")
# Test comparing different files
# - ignore when the files are different
CompareFiles(InputFile1="data/a1.txt",InputFile2="data/b1.txt",IfDifferent="Ignore")
