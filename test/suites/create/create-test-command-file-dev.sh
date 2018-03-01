#!/bin/sh

# Run the command file to create the automated test suite.
# - This script can be run from the command line.
# - This version uses the development version `gpdev.sh`
# - If using the UI, just load and run the command file, rather than this script.

gpDev=../../../../owf-app-geoprocessor-python/scripts/gpdev.sh
GP=${gpDev}

# Redirect standard output and error to a log file
$GP --commands create-regression-test-command-file.gp > create-test-command-file-dev.sh.log 2>&1
exitCode=$?

if [ ${exitCode} -ne 0 ]
	then
	echo ""
	echo "ERROR generating test suite command file"
fi

echo ""
echo "Used the following to run the command file:  $GP"
echo ""
echo "See create-regression-test-command-file.gp.log for output from running command file."
echo "See create-test-command-file-dev.sh.log for window output (adds a bit more information)."
echo ""
echo "Next, cd to ../run and run script:  run-geoprocessor-tests.sh"
echo ""
