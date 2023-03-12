StartLog(LogFile="results/create-regression-test-command-file.gp.log")
# Create the regression test runner for the following files:
#   /test/suites/
# Run the tests by running ../run/geoprocessor-tests.gp
# The resulting command file can then be run to automate processing all tests.
CreateRegressionTestCommandFile(SearchFolder="../../../commands",FilenamePattern="test-*.gp",OutputFile="../run/geoprocessor-tests.gp",SetupCommandFile="create-regression-test-command-file-setup.gp",TestResultsFile="results/geoprocessor-tests-out-${NowString}.txt",EndCommandFile="create-regression-test-command-file-end.gp")