@echo off
rem Tests to run to test commands.
rem - This is a simple list - run one or more by commenting out tests as appropriate
rem - This file will be obsolete when the full test framework is functional and via UI
rem - Remember to use "call" at the start of each line.
rem   Otherwise the window will go away when exit is called in the "gp" batch file.
rem - Redirect to a file if necessary using:  run-tests-steve.bat > file 2>&1
rem - Run the developer version of the geoprocessor, to use development Python files.

rem Python 2...
rem set GP=..\..\..\..\owf-app-geoprocessor-python\scripts\gpdev2.bat
rem Python 3...
set GP=..\..\..\..\owf-app-geoprocessor-python\scripts\gpdev.bat

rem call %GP% --commands ../../commands/Blank/test-Blank.gp
rem call %GP% --commands ../../commands/Comment/test-Comment.gp
rem call %GP% --commands ../../commands/CommentBlockStart/test-CommentBlockStart.gp
rem call %GP% --commands ../../commands/CompareFiles/test-CompareFiles-DifferentFiles-IfDifferentWarn.gp
rem call %GP% --commands ../../commands/CompareFiles/test-CompareFiles-DifferentFiles-IfDifferentIgnore.gp
rem call %GP% --commands ../../commands/CompareFiles/test-CompareFiles-SameFiles-IfSameIgnore.gp
rem call %GP% --commands ../../commands/CompareFiles/test-CompareFiles-SameFiles-IfSameWarn.gp
rem call %GP% --commands ../../commands/CompareFiles/test-CompareFiles-1Diff-IfDifferentWarn.gp
rem call %GP% --commands ../../commands/CompareFiles/test-CompareFiles-1Diff-AllowedDiffCount1-IfDifferentWarn.gp
rem call %GP% --commands ../../commands/CopyFile/test-CopyFile.gp
rem call %GP% --commands ../../commands/For/test-For-List-str.gp
rem call %GP% --commands ../../commands/For/test-For-List-str-Nested.gp
rem call %GP% --commands ../../commands/For/test-For-Sequence-1-5-1.gp
rem call %GP% --commands ../../commands/For/test-For-Sequence-1.0-5.0-1.0.gp
rem call %GP% --commands ../../commands/If/test-If-bool.gp
rem call %GP% --commands ../../commands/If/test-If-float.gp
rem call %GP% --commands ../../commands/If/test-If-int.gp
rem call %GP% --commands ../../commands/If/test-If-int-CompareAsStrings.gp
rem call %GP% --commands ../../commands/If/test-If-nested.gp
rem call %GP% --commands ../../commands/If/test-If-str.gp
rem call %GP% --commands ../../commands/Message/test-Message.gp
rem call %GP% --commands ../../commands/RemoveFile/test-RemoveFile.gp
call %GP% --commands ../../commands/RunProgram/test-RunProgram-cat.gp -p Property1=Value1
rem call %GP% --commands ../../commands/SetGeoLayerProperty/test-SetGeoLayerProperty.gp
rem call %GP% --commands ../../commands/SetProperty/test-SetProperty.gp
rem call %GP% --commands ../../commands/SetPropertyFromGeoLayer/test-SetPropertyFromGeoLayer.gp
rem call %GP% --commands ../../commands/StartLog/test-StartLog.gp
rem call %GP% --commands ../../commands/WriteGeoLayerPropertiesToFile/test-WriteGeoLayerPropertiesToFile-IncludeProperties-NameValue-Ascending.gp
rem call %GP% --commands ../../commands/WriteGeoLayerToGeoJSON/test-WriteGeoLayerToGeoJSON-Line-OutputPrecision.gp
rem call %GP% --commands ../../commands/WritePropertiesToFile/test-WritePropertiesToFile-IncludeProperties-NameTypeValue-Ascending.gp
rem call %GP% --commands ../../commands/WritePropertiesToFile/test-WritePropertiesToFile-IncludeProperties-NameTypeValue-Descending.gp
rem call %GP% --commands ../../commands/WritePropertiesToFile/test-WritePropertiesToFile-IncludeProperties-NameTypeValuePython-Ascending.gp
rem call %GP% --commands ../../commands/WritePropertiesToFile/test-WritePropertiesToFile-IncludeProperties-NameValue-Ascending.gp
