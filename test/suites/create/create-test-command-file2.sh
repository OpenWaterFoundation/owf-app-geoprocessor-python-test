#!/bin/sh

# Run the command file to create the automated test suite.
# - This version works with Python2/QGIS2
# - This script can be run from the command line.
# - If using the UI, just load and run the command file, rather than this script.

# Version of GeoProcessor that does not depend on QGIS (for testing non-geospatial programs)
gpTest=../../../../owf-app-geoprocessor-python/scripts/gptest2.sh
# Version of GeoProcessor that does depend on QGIS (for full testing)
gp=../../../../owf-app-geoprocessor-python/scripts/gp2.sh
GP=${gpTest}

# Redirect standard output and error to a log file
$GP --commands create-regression-test-command-file.gp > create-test-command-file2.sh.log 2>&1
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
echo "See create-test-command-file2.sh.log for window output (adds a bit more information)."
echo ""
echo "Next, cd to ../run and run script:  run-geoprocessor-tests2.sh"
echo ""
