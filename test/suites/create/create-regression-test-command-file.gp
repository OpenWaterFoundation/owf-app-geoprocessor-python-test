StartLog(LogFile="create-regression-test-command-file.gp.log")
# This command file creates the regression test command file.
# The resulting command file can then be run to automate processing all tests.
CreateRegressionTestCommandFile(SearchFolder="../../commands",FilenamePattern="test-*.gp",OutputFile="../run/geoprocessor-tests.gp")
