StartLog(LogFile="results/test-RunProgram-cat.gp.log")
# Test running a program
# - On Windows run the "type" program to list a data file to output
# - On Linux run the "cat" program to list a data file to output
# - Indicate to use a command shell because "cat" is not an executable program in the PATH
# - TODO - need to use If() to check if Windows and if so use "type" else use "cat"
RemoveFile(SourceFile="results/test-RunProgram-cat-out.txt",IfSourceFileNotFound="Ignore")
# Uncomment the following line to regenerate expected results
# RunProgram(CommandLine="type ${WorkingDirNative}\data\test-file.txt > ${WorkingDirNative}\expected-results\test-RunProgram-cat-out.txt",UseCommandShell="True")
RunProgram(CommandLine="type ${WorkingDirNative}\data\test-file.txt > ${WorkingDirNative}\results\test-RunProgram-cat-out.txt",UseCommandShell="True",Timeout="5")
# Compare the results
CompareFiles(InputFile1="expected-results/test-RunProgram-cat-out.txt",InputFile2="results/test-RunProgram-cat-out.txt",IfDifferent="Warn")