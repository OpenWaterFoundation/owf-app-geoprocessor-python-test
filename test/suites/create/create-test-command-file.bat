@echo off
rem Run the command file to create the automated test suite.
rem - This version uses the geoprocessor (gp.bat) configured for the deployed environment.
rem - See also create-test-command-file-dev.bat, which should be used in the development environment.
rem - This batch file can be run from the command line.
rem - If using the UI, just load and run the command file (create-regression-test-command-file.gp),
rem   rather than running this batch file.

rem Python 2...
rem set GP=..\..\..\..\owf-app-geoprocessor-python\scripts\gp.bat
rem Python 3...
set GP=..\..\..\..\owf-app-geoprocessor-python\scripts\gp3.bat

rem Redirect standard output and error to a log file
rem - This is done because the Python environment and code prints some messages
rem   to the Windows command shell window beyond what ends up in the GeoProcessor log file
call %GP% --commands create-regression-test-command-file.gp > create-test-command-file.bat.log 2>&1

echo.
echo See create-regression-test-command-file.bat.log for output from running command file.
echo See create-test-command-file.bat.log for window output (adds a bit more information).
echo.
echo Next, cd to ../run and run batch file:  run-geoprocessor-tests.bat
echo.
