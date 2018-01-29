@echo off
rem Run the command file to create the automated test suite.
rem - This batch file can be run from the command line.
rem - If using the UI, just load and run the command file.

set GP=..\..\..\..\owf-app-geoprocessor-python\scripts\gp.bat

rem Redirect standard output and error to a log file
call %GP% --commands create-regression-test-command-file.gp > create-test-command-file.bat.log 2>&1

@echo on
echo See create-test-command-file.bat.log for output
