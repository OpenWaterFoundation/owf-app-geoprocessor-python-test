#!/bin/sh

# Run the auto-generated GeoProcessor tests

# Run using developer version of environment, with full QGIS enabled
#gpDev=../../../../owf-app-geoprocessor-python/scripts/gpdev.sh
# Run using test version of environment, with QGIS dependency disabled
gpTest="../../../../owf-app-geoprocessor-python/scripts/gptest.sh"
GP=${gpTest}

${GP} --commands geoprocessor-tests.gp > run-geoprocessor-tests.sh.log 2>&1

echo ""
echo "See text test summary output in geoprocessor-tests.gp.out.txt"
echo "See html command summary output in geoprocessor-tests.gp.summary.html"
echo "See window output in run-geoprocessor-tests.sh.log (adds a bit more information)"
echo ""
