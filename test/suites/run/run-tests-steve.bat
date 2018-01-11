rem Tests to run to test commands.
rem - This is a simple list - run all or comment out tests as appropriate
rem - This file will be obsolete when the full test framework is functional

set GP=../../../../owf-app-geoprocessor-python/scripts/gp.bat

rem %GP% --commands ../../commands/CopyFile/test-CopyFile.gp
rem %GP% --commands ../../commands/Message/test-Message.gp
rem %GP% --commands ../../commands/SetProperty/test-SetGeoLayerProperty.gp
%GP% --commands ../../commands/SetProperty/test-SetProperty.gp
rem %GP% --commands ../../commands/SetProperty/test-SetPropertyFromGeoLayer.gp
rem %GP% --commands ../../commands/StartLog/test-StartLog.gp
rem %GP% --commands ../../commands/RemoveFile/test-RemoveFile.gp
rem %GP% --commands ../../commands/CompareFiles/test-CompareFiles-DifferentFiles-IfDifferentWarn.gp
rem %GP% --commands ../../commands/CompareFiles/test-CompareFiles-DifferentFiles-IfDifferentIgnore.gp
rem %GP% --commands ../../commands/CompareFiles/test-CompareFiles-SameFiles-IfSameIgnore.gp
rem %GP% --commands ../../commands/CompareFiles/test-CompareFiles-SameFiles-IfSameWarn.gp
rem %GP% --commands ../../commands/CompareFiles/test-CompareFiles-1Diff-IfDifferentWarn.gp
rem %GP% --commands ../../commands/CompareFiles/test-CompareFiles-1Diff-AllowedDiffCount1-IfDifferentWarn.gp
