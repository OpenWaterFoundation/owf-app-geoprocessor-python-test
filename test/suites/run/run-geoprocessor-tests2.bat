@echo off
rem Run the auto-generated GeoProcessor tests
rem - This version uses Python2/QGIS2
rem - Use the development version of the GeoProcessor (gpdev.bat) so as to use development code.

set GP=..\..\..\..\owf-app-geoprocessor-python\scripts\gpdev2.bat

call %GP% --commands geoprocessor-tests.gp > run-geoprocessor-tests2.bat.log 2>&1
if %errorlevel% neq 0 goto error

echo.
echo See text test summary output in geoprocessor-tests.gp.out.txt
echo See html command summary output in geoprocessor-tests.gp.summary.html
echo See window output in run-geoprocessor-tests2.bat.log (adds a bit more information)
echo.

goto end

:error
rem There was an error running the GeoProcessor
echo.
echo errorlevel from running GeoProcessor is %errorlevel% (something went wrong)
echo See window output in run-geoprocessor-tests2.bat.log
echo.

rem Final end for batch file
:end
