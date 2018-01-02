rem Tests to run to test commands.
rem - This is a simple list - run all or comment out tests as appropriate
rem - This file will be obsolete when the full test framework is functional

set GP=../../../../owf-app-geoprocessor-python/scripts/gp.bat

rem %GP% --commands ../../commands/CopyFile/test-CopyFile.gp
rem %GP% --commands ../../commands/Message/test-Message.gp
rem %GP% --commands ../../commands/StartLog/test-StartLog.gp
%GP% --commands ../../commands/RemoveFile/test-RemoveFile.gp
