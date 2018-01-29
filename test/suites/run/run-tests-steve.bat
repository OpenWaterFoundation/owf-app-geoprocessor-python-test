@echo off
rem Tests to run to test commands.
rem - This is a simple list - run all or comment out tests as appropriate
rem - This file will be obsolete when the full test framework is functional

set GP=..\..\..\..\owf-app-geoprocessor-python\scripts\gp.bat

rem call %GP% --commands ../../commands/Blank/test-Blank.gp
rem call %GP% --commands ../../commands/Comment/test-Comment.gp
rem call %GP% --commands ../../commands/CompareFiles/test-CompareFiles-DifferentFiles-IfDifferentWarn.gp
rem call %GP% --commands ../../commands/CompareFiles/test-CompareFiles-DifferentFiles-IfDifferentIgnore.gp
rem call %GP% --commands ../../commands/CompareFiles/test-CompareFiles-SameFiles-IfSameIgnore.gp
rem call %GP% --commands ../../commands/CompareFiles/test-CompareFiles-SameFiles-IfSameWarn.gp
rem call %GP% --commands ../../commands/CompareFiles/test-CompareFiles-1Diff-IfDifferentWarn.gp
rem call %GP% --commands ../../commands/CompareFiles/test-CompareFiles-1Diff-AllowedDiffCount1-IfDifferentWarn.gp
rem call %GP% --commands ../../commands/CopyFile/test-CopyFile.gp
rem call %GP% --commands ../../commands/Message/test-Message.gp
rem call %GP% --commands ../../commands/RemoveFile/test-RemoveFile.gp
rem call %GP% --commands ../../commands/SetGeoLayerProperty/test-SetGeoLayerProperty.gp
rem call %GP% --commands ../../commands/SetProperty/test-SetProperty.gp
rem call %GP% --commands ../../commands/SetPropertyFromGeoLayer/test-SetPropertyFromGeoLayer.gp
rem call %GP% --commands ../../commands/StartLog/test-StartLog.gp
rem call %GP% --commands ../../commands/WriteGeoLayerPropertiesToFile/test-WriteGeoLayerPropertiesToFile-IncludeProperties-NameValue-Ascending.gp
rem call %GP% --commands ../../commands/WritePropertiesToFile/test-WritePropertiesToFile-IncludeProperties-NameTypeValue-Ascending.gp
call %GP% --commands ../../commands/WritePropertiesToFile/test-WritePropertiesToFile-IncludeProperties-NameTypeValue-Descending.gp
rem call %GP% --commands ../../commands/WritePropertiesToFile/test-WritePropertiesToFile-IncludeProperties-NameTypeValuePython-Ascending.gp
rem call %GP% --commands ../../commands/WritePropertiesToFile/test-WritePropertiesToFile-IncludeProperties-NameValue-Ascending.gp
