StartLog(LogFile="results/test-RunProgram-wlgetquery.gp.log")
# Test running wlgetquery program
# - Parse a command line used with the TriLynx Systems NovaStar datadisp-cgi program
# - the QUERY_STRING environment variable is set in the shell and then echoed to a file
# - Specify using a single variable name and value because of potential issues parsing
RemoveFile(SourceFile="results/test-RunProgram-wlgetquery-out.txt",IfSourceFileNotFound="Ignore")
# Uncomment the following line to regenerate expected results
#RunProgram(CommandLine="echo QUERY_STRING=$QUERY_STRING > ${WorkingDir}/expected-results/test-RunProgram-wlgetquery-out.txt",UseCommandShell="True",IncludeEnvVarName1="QUERY_STRING",IncludeEnvVarValue1="ID=40160&ds=1&ms=10&ys=2017&hs=24:00:00&DE=3&ME=10&YE=2018&HE=24:00:00",OutputFiles="${WorkingDir}/results/test-RunProgram-wlgetquery-out.txt")
RunProgram(CommandLine="echo QUERY_STRING=$QUERY_STRING > ${WorkingDir}/results/test-RunProgram-wlgetquery-out.txt",UseCommandShell="True",IncludeEnvVarName1="QUERY_STRING",IncludeEnvVarValue1="ID=40160&ds=1&ms=10&ys=2017&hs=24:00:00&DE=3&ME=10&YE=2018&HE=24:00:00",OutputFiles="${WorkingDir}/results/test-RunProgram-wlgetquery-out.txt")
# Compare the results
CompareFiles(InputFile1="expected-results/test-RunProgram-wlgetquery-out.txt",InputFile2="results/test-RunProgram-wlgetquery-out.txt",AllowedDiffCount="1",IfDifferent="Warn")
