StartLog(LogFile="create-regression-test-command-file.gp.log")
# This command file creates the regression test command test suite for all general tests.
# Run the tests by running ../run/geoprocessor-tests.gp
# The resulting command file can then be run to automate processing all tests.
CreateRegressionTestCommandFile(SearchFolder="../../commands",FilenamePattern="test-*.gp",OutputFile="../run/geoprocessor-tests.gp")