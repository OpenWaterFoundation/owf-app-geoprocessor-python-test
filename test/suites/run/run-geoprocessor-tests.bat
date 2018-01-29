@echo off
rem Run the auto-generated GeoProcessor tests

set GP=..\..\..\..\owf-app-geoprocessor-python\scripts\gp.bat

call %GP% --commands geoprocessor-tests.gp > run-geoprocessor-tests.bat.log 2>&1

@echo on
echo See output in run-geoprocessor-tests.bat.log
