@echo off
rem Run the command file to create the automated test suite.
rem - This batch file can be run from the command line.
rem - If using the UI, just load and run the command file, rather than running this batch file.

set GP=..\..\..\..\owf-app-geoprocessor-python\scripts\gp.bat

rem Redirect standard output and error to a log file
call %GP% --commands create-regression-test-command-file.gp > create-test-command-file.bat.log 2>&1

echo.
echo See create-regression-test-command-file.bat.log for output from running command file.
echo See create-test-command-file.bat.log for window output (adds a bit more information).
echo.
echo Next, cd to ../run and run batch file:  run-geoprocessor-tests.bat
echo.
