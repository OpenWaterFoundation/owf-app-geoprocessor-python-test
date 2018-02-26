#!/bin/sh

# Tests to run to GeoProcessor commands.
# - This is a simple list - run one or more by commenting out tests as appropriate
# - This file will be obsolete when the full test framework is functional and via UI
# - Redirect to a file if necessary using:  run-tests-steve.bat  > file 2>&1
# - Run the developer version of the geoprocessor, to use development Python files.

# Use the gpdev script, which relies on QGIS, used in development environment running in CygWin, etc.
# - This is the default
gpDev=../../../../owf-app-geoprocessor-python/scripts/gpdev.sh
# Use the gptest script, which does not have a dependence on QGIS
# - This is used if command line -gptest is provided when running this script
gpTest=../../../../owf-app-geoprocessor-python/scripts/gptest.sh

# Default is use development version
GP=${gpDev}
# Use test files if -gptest is specified as first script command line argument
# - parse brute force for now but later use standard parsing functionality
if [ "$#" = 1 ]
	then
	if [ "$1" = "-gptest" ]
		then
		GP=${gpTest}
	fi
fi

#${GP} --commands ../../commands/Blank/test-Blank.gp
#${GP} --commands ../../commands/Comment/test-Comment.gp
#${GP} --commands ../../commands/CommentBlockStart/test-CommentBlockStart.gp
#${GP} --commands ../../commands/CompareFiles/test-CompareFiles-DifferentFiles-IfDifferentWarn.gp
#${GP} --commands ../../commands/CompareFiles/test-CompareFiles-DifferentFiles-IfDifferentIgnore.gp
#${GP} --commands ../../commands/CompareFiles/test-CompareFiles-SameFiles-IfSameIgnore.gp
#${GP} --commands ../../commands/CompareFiles/test-CompareFiles-SameFiles-IfSameWarn.gp
#${GP} --commands ../../commands/CompareFiles/test-CompareFiles-1Diff-IfDifferentWarn.gp
#${GP} --commands ../../commands/CompareFiles/test-CompareFiles-1Diff-AllowedDiffCount1-IfDifferentWarn.gp
# ${GP} --commands ../../commands/CopyFile/test-CopyFile.gp
#${GP} --commands ../../commands/For/test-For-List-str.gp
#${GP} --commands ../../commands/For/test-For-List-str-Nested.gp
#${GP} --commands ../../commands/For/test-For-Sequence-1-5-1.gp
#${GP} --commands ../../commands/For/test-For-Sequence-1.0-5.0-1.0.gp
#${GP} --commands ../../commands/If/test-If-bool.gp
#${GP} --commands ../../commands/If/test-If-float.gp
#${GP} --commands ../../commands/If/test-If-int.gp
${GP} --commands ../../commands/If/test-If-int-CompareAsStrings.gp
#${GP} --commands ../../commands/If/test-If-nested.gp
#${GP} --commands ../../commands/If/test-If-str.gp
#${GP} --commands ../../commands/Message/test-Message.gp
#${GP} --commands ../../commands/#oveFile/test-#oveFile.gp
#${GP} --commands ../../commands/RunProgram/test-RunProgram-cat.gp
#${GP} --commands ../../commands/SetGeoLayerProperty/test-SetGeoLayerProperty.gp
#${GP} --commands ../../commands/SetProperty/test-SetProperty.gp
#${GP} --commands ../../commands/SetPropertyFromGeoLayer/test-SetPropertyFromGeoLayer.gp
#${GP} --commands ../../commands/StartLog/test-StartLog.gp
#${GP} --commands ../../commands/WriteGeoLayerPropertiesToFile/test-WriteGeoLayerPropertiesToFile-IncludeProperties-NameValue-Ascending.gp
#${GP} --commands ../../commands/WriteGeoLayerToGeoJSON/test-WriteGeoLayerToGeoJSON-Line-OutputPrecision.gp
#${GP} --commands ../../commands/WritePropertiesToFile/test-WritePropertiesToFile-IncludeProperties-NameTypeValue-Ascending.gp
#${GP} --commands ../../commands/WritePropertiesToFile/test-WritePropertiesToFile-IncludeProperties-NameTypeValue-Descending.gp
#${GP} --commands ../../commands/WritePropertiesToFile/test-WritePropertiesToFile-IncludeProperties-NameTypeValuePython-Ascending.gp
#${GP} --commands ../../commands/WritePropertiesToFile/test-WritePropertiesToFile-IncludeProperties-NameValue-Ascending.gp

echo ""
echo "Ran using GeoProcessor script ${GP}"
echo ""
