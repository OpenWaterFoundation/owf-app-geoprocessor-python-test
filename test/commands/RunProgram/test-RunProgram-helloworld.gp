StartLog(LogFile="results/test-RunProgram-helloworld.gp.log")
# Test running a program:
# - Run the "helloworld" executable program print "hello world"
# - TODO - need to use If() to check if Windows and if so use "type" else use "cat"
RemoveFile(SourceFile="results/test-RunProgram-helloworld-out.txt",IfSourceFileNotFound="Ignore")
# Uncomment the following line to regenerate expected results.
# RunProgram(CommandLine="${WorkingDir}/data/helloworld.exe",StdoutFile="${WorkingDir}/expected-results/test-RunProgram-helloworld-out.txt")
RunProgram(CommandLine="${WorkingDir}/data/helloworld.exe",OutputFiles="${WorkingDir}/results/test-RunProgram-helloworld-out.txt",StdoutFile="${WorkingDir}/results/test-RunProgram-helloworld-out.txt")
# Compare the results.
CompareFiles(InputFile1="expected-results/test-RunProgram-helloworld-out.txt",InputFile2="results/test-RunProgram-helloworld-out.txt",IfDifferent="Warn")