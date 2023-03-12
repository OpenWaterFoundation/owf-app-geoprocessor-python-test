StartLog(LogFile="results/test-RunProgram-echo-env.gp.log")
# Test running a program:
# - Run the "echo" command in a Linux sh script to print an environment variable set for the script
# - Indicate to use a command shell because the program to run is a sh script in this folder
# - TODO - need to run on Linux only, perhaps with annotation on this test
RemoveFile(SourceFile="results/test-RunProgram-echo-env-out.txt",IfSourceFileNotFound="Ignore")
# Uncomment the following line to regenerate expected results.
#RunProgram(CommandLine="${WorkingDir}/test-RunProgram-echo-env.sh > ${WorkingDir}/expected-results/test-RunProgram-echo-env-out.txt",UseCommandShell="True",IncludeEnvVars="TEST_ENV_VAR=TestValue",OutputFiles="${WorkingDir}/expected-results/test-RunProgram-echo-env-out.txt")
RunProgram(CommandLine="${WorkingDir}/test-RunProgram-echo-env.sh > ${WorkingDir}/results/test-RunProgram-echo-env-out.txt",UseCommandShell="True",IncludeEnvVars="TEST_ENV_VAR=TestValue",OutputFiles="${WorkingDir}/results/test-RunProgram-echo-env-out.txt")
# Compare the results.
CompareFiles(InputFile1="expected-results/test-RunProgram-echo-env-out.txt",InputFile2="results/test-RunProgram-echo-env-out.txt",IfDifferent="Warn")