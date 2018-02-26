#!/bin/sh

# Run the command file to create the automated test suite.
# - This script can be run from the command line.
# - If using the UI, just load and run the command file, rather than this script.

# Version of GeoProcssor that does not depend on QGIS (for testing non-geospatial programs)
gpTest=../../../../owf-app-geoprocessor-python/scripts/gptest.sh
# Version of GeoProcssor that does depend on QGIS (for full testing)
gp=../../../../owf-app-geoprocessor-python/scripts/gp.sh
GP=${gpTest}

# Redirect standard output and error to a log file
$GP --commands create-regression-test-command-file.gp > create-test-command-file.sh.log 2>&1

echo ""
echo "See create-regression-test-command-file.gp.log for output from running command file."
echo "See create-test-command-file.sh.log for window output (adds a bit more information)."
echo ""
echo "Next, cd to ../run and run script:  run-geoprocessor-tests.sh"
echo ""
