@echo off
rem Run the auto-generated GeoProcessor tests
rem - Use the development version of the runner so as to use development code.

set GP=..\..\..\..\owf-app-geoprocessor-python\scripts\gpdev.bat

call %GP% --commands geoprocessor-tests.gp > run-geoprocessor-tests.bat.log 2>&1

echo.
echo See text test summary output in geoprocessor-tests.gp.out.txt
echo See html command summary output in geoprocessor-tests.gp.summary.html
echo See window output in run-geoprocessor-tests.bat.log (adds a bit more information)
echo.
