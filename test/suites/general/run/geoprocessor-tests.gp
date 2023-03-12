# File generated by...
# program:      gp.py 1.6.0.dev
# user:         steve
# date:         2023-03-12T01:48:33.765061
# host:         blue
# directory:    
# command line: gp.py
# 
# #             D:\Users\steve\owf-dev\GeoProcessor\git-repos\owf-app-geoprocessor-python\src\geoprocessor\app\gp.py
# #             --ui /s3.22.16
# -----------------------------------------------------------------------
#----------------
# The following setup commands were imported from:
#   D:\Users\steve\owf-dev\GeoProcessor\git-repos\owf-app-geoprocessor-python-test\test\suites\general\create\create-regression-test-command-file-setup.gp
# Command file to set up the environment and database connections for the general test suite.
# This command file should be read in at the start of the test suite
# and then the remaining tests can share these connections
#
# Get the current time to use in output files:
# - TODO smalers 2023-03-10 need to implement the commands and DateTime support
#SetProperty(PropertyName="Now",PropertyType=DateTime,PropertyValue="CurrentToMinute")
#FormatDateTimeProperty(PropertyName="NowString",DateTimePropertyName="Now",Format="%Y%m%d%H%M")
SetProperty(PropertyName="NowString",PropertyType="str",PropertyValue="2023-03-10")
#----------------#
# The following 186 test cases will be run to compare results with expected results.
# Individual log files are generally created for each test.
StartRegressionTestResultsReport(OutputFile="results/geoprocessor-tests-out-${NowString}.txt.out.txt")
RunCommands(CommandFile="..\..\..\commands\AddGeoLayerAttribute\test-AddGeoLayerAttribute-Line-Memory.gp")
RunCommands(CommandFile="..\..\..\commands\AddGeoLayerAttribute\test-AddGeoLayerAttribute-Line-OnDisk.gp")
RunCommands(CommandFile="..\..\..\commands\AddGeoLayerAttribute\test-AddGeoLayerAttribute-Point-Memory.gp")
RunCommands(CommandFile="..\..\..\commands\AddGeoLayerAttribute\test-AddGeoLayerAttribute-Point-OnDisk.gp")
RunCommands(CommandFile="..\..\..\commands\AddGeoLayerAttribute\test-AddGeoLayerAttribute-Polygon-Memory.gp")
RunCommands(CommandFile="..\..\..\commands\AddGeoLayerAttribute\test-AddGeoLayerAttribute-Polygon-OnDisk.gp")
RunCommands(CommandFile="..\..\..\commands\Blank\test-Blank.gp")
RunCommands(CommandFile="..\..\..\commands\ClipGeoLayer\test-ClipGeoLayer-OutputGeoLayerID-pointsAsInput.gp")
RunCommands(CommandFile="..\..\..\commands\ClipGeoLayer\test-ClipGeoLayer-linesAsInput-Memory.gp")
RunCommands(CommandFile="..\..\..\commands\ClipGeoLayer\test-ClipGeoLayer-linesAsInput.gp")
RunCommands(CommandFile="..\..\..\commands\ClipGeoLayer\test-ClipGeoLayer-pointsAsInput.gp")
RunCommands(CommandFile="..\..\..\commands\ClipGeoLayer\test-ClipGeoLayer-polygonsAsInput.gp")
RunCommands(CommandFile="..\..\..\commands\CommentBlockStart\test-CommentBlockStart.gp")
RunCommands(CommandFile="..\..\..\commands\Comment\test-Comment.gp")
RunCommands(CommandFile="..\..\..\commands\CompareFiles\test-CompareFiles-1Diff-AllowedDiffCount1-IfDifferentWarn.gp")
RunCommands(CommandFile="..\..\..\commands\CompareFiles\test-CompareFiles-1Diff-IfDifferentWarn.gp",ExpectedStatus="Warning")
RunCommands(CommandFile="..\..\..\commands\CompareFiles\test-CompareFiles-DifferentFiles-IfDifferentIgnore.gp")
RunCommands(CommandFile="..\..\..\commands\CompareFiles\test-CompareFiles-DifferentFiles-IfDifferentWarn.gp",ExpectedStatus="Warning")
RunCommands(CommandFile="..\..\..\commands\CompareFiles\test-CompareFiles-SameFiles-IfSameIgnore.gp")
RunCommands(CommandFile="..\..\..\commands\CompareFiles\test-CompareFiles-SameFiles-IfSameWarn.gp",ExpectedStatus="Warning")
RunCommands(CommandFile="..\..\..\commands\CompareFiles\test-CompareFiles-empty-lines-properties.gp",ExpectedStatus="Warning")
RunCommands(CommandFile="..\..\..\commands\CompareFiles\test-CompareFiles-empty-lines.gp",ExpectedStatus="Warning")
RunCommands(CommandFile="..\..\..\commands\CopyFile\test-CopyFile.gp")
RunCommands(CommandFile="..\..\..\commands\CopyGeoLayer\test-CopyGeoLayer-Line-OutputGeoLayerID.gp")
RunCommands(CommandFile="..\..\..\commands\CopyGeoLayer\test-CopyGeoLayer-Line.gp")
RunCommands(CommandFile="..\..\..\commands\CopyGeoLayer\test-CopyGeoLayer-Points-ExcludeAttributes.gp")
RunCommands(CommandFile="..\..\..\commands\CopyGeoLayer\test-CopyGeoLayer-Points-IncludeAttributes-ExcludeAttributes.gp")
RunCommands(CommandFile="..\..\..\commands\CopyGeoLayer\test-CopyGeoLayer-Points-IncludeAttributes.gp")
RunCommands(CommandFile="..\..\..\commands\CopyGeoLayer\test-CopyGeoLayer-Points-IncludeFeaturesIf.gp")
RunCommands(CommandFile="..\..\..\commands\CreateFolder\test-CreateFolder.gp",ExpectedStatus="Warning")
RunCommands(CommandFile="..\..\..\commands\CreateGeoLayerFromGeometry\test-CreateGeoLayerFromGeometry-BoundingBox-Polygon-UTMZ14N.gp")
RunCommands(CommandFile="..\..\..\commands\CreateGeoLayerFromGeometry\test-CreateGeoLayerFromGeometry-BoundingBox-Polygon-WGS84.gp")
RunCommands(CommandFile="..\..\..\commands\CreateGeoLayerFromGeometry\test-CreateGeoLayerFromGeometry-WKB-Point.gp",ExpectedStatus="Failure")
RunCommands(CommandFile="..\..\..\commands\CreateGeoLayerFromGeometry\test-CreateGeoLayerFromGeometry-WKT-Line.gp")
RunCommands(CommandFile="..\..\..\commands\CreateGeoLayerFromGeometry\test-CreateGeoLayerFromGeometry-WKT-Point.gp")
RunCommands(CommandFile="..\..\..\commands\CreateGeoLayerFromGeometry\test-CreateGeoLayerFromGeometry-WKT-Polygons-Properties.gp")
RunCommands(CommandFile="..\..\..\commands\CreateGeoLayerFromGeometry\test-CreateGeoLayerFromGeometry-WKT-Polygons.gp")
RunCommands(CommandFile="..\..\..\commands\CreateGeoMapProject\test-CreateGeoMapProject-default-ids.gp")
RunCommands(CommandFile="..\..\..\commands\CreateGeoMapProject\test-CreateGeoMapProject.gp")
RunCommands(CommandFile="..\..\..\commands\CreateGeoMap\test-CreateGeoMap.gp")
RunCommands(CommandFile="..\..\..\commands\CreateRasterGeoLayer\test-CreateRasterGeoLayer.gp")
RunCommands(CommandFile="..\..\..\commands\Exit\test-Exit.gp")
RunCommands(CommandFile="..\..\..\commands\For\test-For-List-str-Nested.gp")
RunCommands(CommandFile="..\..\..\commands\For\test-For-List-str.gp")
RunCommands(CommandFile="..\..\..\commands\For\test-For-Sequence-1-5-1.gp")
RunCommands(CommandFile="..\..\..\commands\For\test-For-Sequence-1.0-5.0-1.0.gp")
RunCommands(CommandFile="..\..\..\commands\For\test-For-Table.gp")
RunCommands(CommandFile="..\..\..\commands\FreeGeoLayers\test-FreeGeoLayers-ExpectFail.gp",ExpectedStatus="Failure")
RunCommands(CommandFile="..\..\..\commands\If\test-If-bool.gp")
RunCommands(CommandFile="..\..\..\commands\If\test-If-float.gp")
RunCommands(CommandFile="..\..\..\commands\If\test-If-int-CompareAsStrings.gp")
RunCommands(CommandFile="..\..\..\commands\If\test-If-int.gp")
RunCommands(CommandFile="..\..\..\commands\If\test-If-nested.gp",ExpectedStatus="Warning")
RunCommands(CommandFile="..\..\..\commands\If\test-If-str.gp")
RunCommands(CommandFile="..\..\..\commands\IntersectGeoLayer\test-IntersectGeoLayer-lines-linesAsIntersect.gp")
RunCommands(CommandFile="..\..\..\commands\IntersectGeoLayer\test-IntersectGeoLayer-lines-pointsAsIntersect-expectFail.gp",ExpectedStatus="Failure")
RunCommands(CommandFile="..\..\..\commands\IntersectGeoLayer\test-IntersectGeoLayer-lines-polygonAsIntersect-ExcludeIntersectAttributes.gp")
RunCommands(CommandFile="..\..\..\commands\IntersectGeoLayer\test-IntersectGeoLayer-lines-polygonAsIntersect-IncludeIntersectAttributes.gp")
RunCommands(CommandFile="..\..\..\commands\IntersectGeoLayer\test-IntersectGeoLayer-lines-polygonAsIntersect-outputGeoLayerID.gp")
RunCommands(CommandFile="..\..\..\commands\IntersectGeoLayer\test-IntersectGeoLayer-lines-polygonAsIntersect.gp")
RunCommands(CommandFile="..\..\..\commands\IntersectGeoLayer\test-IntersectGeoLayer-points-linesAsIntersect.gp")
RunCommands(CommandFile="..\..\..\commands\IntersectGeoLayer\test-IntersectGeoLayer-points-pointsAsIntersect.gp")
RunCommands(CommandFile="..\..\..\commands\IntersectGeoLayer\test-IntersectGeoLayer-points-polygonAsIntersect.gp")
RunCommands(CommandFile="..\..\..\commands\IntersectGeoLayer\test-IntersectGeoLayer-polygons-linesAsIntersect-expectFail.gp",ExpectedStatus="Failure")
RunCommands(CommandFile="..\..\..\commands\IntersectGeoLayer\test-IntersectGeoLayer-polygons-pointsAsIntersect-expectFail.gp",ExpectedStatus="Failure")
RunCommands(CommandFile="..\..\..\commands\IntersectGeoLayer\test-IntersectGeoLayer-polygons-polygonAsIntersect.gp")
RunCommands(CommandFile="..\..\..\commands\ListFiles\test-ListFiles-FromFolder-FromURL-ExpectFailure.gp",ExpectedStatus="Failure")
RunCommands(CommandFile="..\..\..\commands\ListFiles\test-ListFiles-FromFolder-ListNone-ExpectWarning.gp",ExpectedStatus="Warning")
RunCommands(CommandFile="..\..\..\commands\ListFiles\test-ListFiles-FromFolder-OnlyFiles-IncludePatterns.gp")
RunCommands(CommandFile="..\..\..\commands\ListFiles\test-ListFiles-FromFolder-OnlyFolders-ExcludePatterns.gp")
RunCommands(CommandFile="..\..\..\commands\ListFiles\test-ListFiles-FromFolder.gp")
RunCommands(CommandFile="..\..\..\commands\MergeGeoLayers\test-MergeGeoLayers-Lines-AttributeMap.gp")
RunCommands(CommandFile="..\..\..\commands\MergeGeoLayers\test-MergeGeoLayers-Lines-NoAttributeMap.gp")
RunCommands(CommandFile="..\..\..\commands\MergeGeoLayers\test-MergeGeoLayers-Lines-Point-ExpectFail.gp",ExpectedStatus="Failure")
RunCommands(CommandFile="..\..\..\commands\Message\test-Message.gp")
RunCommands(CommandFile="..\..\..\commands\QgisAlgorithmHelp\test-QgisAlgorithmHelp.gp")
RunCommands(CommandFile="..\..\..\commands\RasterizeGeoLayer\test-RasterizeGeoLayer-polygon-GeoUnits-GeoLayerID.gp")
RunCommands(CommandFile="..\..\..\commands\RasterizeGeoLayer\test-RasterizeGeoLayer-polygon-GeoUnits-OutputFile.gp")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayerFromDelimitedFile\test-ReadGeoLayerFromDelimitedFile-Line.gp")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayerFromDelimitedFile\test-ReadGeoLayerFromDelimitedFile-Points-InvalidYColumn-ExpectFail.gp",ExpectedStatus="Failure")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayerFromDelimitedFile\test-ReadGeoLayerFromDelimitedFile-Points.gp")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayerFromDelimitedFile\test-ReadGeoLayerFromDelimitedFile-Polygon-Properties.gp")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayerFromDelimitedFile\test-ReadGeoLayerFromDelimitedFile-Polygon.gp")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayerFromGeoJSON\test-ReadGeoLayerFromGeoJSON-Line.gp")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayerFromGeoJSON\test-ReadGeoLayerFromGeoJSON-Point.gp")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayerFromGeoJSON\test-ReadGeoLayerFromGeoJSON-Polygon-Properties.gp")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayerFromGeoJSON\test-ReadGeoLayerFromGeoJSON-Polygon.gp")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayerFromShapefile\test-ReadGeoLayerFromShapefile-Line.gp")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayerFromShapefile\test-ReadGeoLayerFromShapefile-Point.gp")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayerFromShapefile\test-ReadGeoLayerFromShapefile-Polygon-Properties.gp")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayerFromShapefile\test-ReadGeoLayerFromShapefile-Polygon.gp")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayersFromFGDB\test-ReadGeoLayersFromFGDB-GeoLayerID_prefix.gp")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayersFromFGDB\test-ReadGeoLayersFromFGDB-InvalidFGDB-ExpectFail.gp",ExpectedStatus="Failure")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayersFromFGDB\test-ReadGeoLayersFromFGDB-OnlyOne-line.gp")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayersFromFGDB\test-ReadGeoLayersFromFGDB-OnlyOne-point.gp")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayersFromFGDB\test-ReadGeoLayersFromFGDB-OnlyOne-polygon-Properties.gp")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayersFromFGDB\test-ReadGeoLayersFromFGDB-OnlyOne-polygon.gp")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayersFromFGDB\test-ReadGeoLayersFromFGDB-Subset_Pattern-ExpectFail.gp",ExpectedStatus="Failure")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayersFromFGDB\test-ReadGeoLayersFromFGDB-WrongFC-ExpectFail.gp",ExpectedStatus="Failure")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayersFromFGDB\test-ReadGeoLayersFromFGDB-WrongFGDB-ExpectFail.gp",ExpectedStatus="Failure")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayersFromFGDB\test-ReadGeoLayersFromFGDB.gp")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayersFromFolder\test-ReadGeoLayersFromFolder-GeoLayerID_prefix-line.gp")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayersFromFolder\test-ReadGeoLayersFromFolder-Subset_Pattern-ExpectFail.gp",ExpectedStatus="Failure")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayersFromFolder\test-ReadGeoLayersFromFolder.gp")
RunCommands(CommandFile="..\..\..\commands\ReadGeoLayersFromGeoPackage\test-ReadGeoLayersFromGeoPackage-one-point.gp")
RunCommands(CommandFile="..\..\..\commands\ReadRasterGeoLayerFromFile\test-ReadRasterGeoLayerFromFile-tif.gp")
RunCommands(CommandFile="..\..\..\commands\ReadTableFromDelimitedFile\test-ReadTableFromDelimitedFile-Delimiter.gp")
RunCommands(CommandFile="..\..\..\commands\ReadTableFromDelimitedFile\test-ReadTableFromDelimitedFile-csv.gp")
RunCommands(CommandFile="..\..\..\commands\ReadTableFromDelimitedFile\test-ReadTableFromDelimitedFile-text.gp")
RunCommands(CommandFile="..\..\..\commands\ReadTableFromExcel\test-ReadTableFromExcel-InvalidWorksheet-ExpectFail.gp",ExpectedStatus="Failure")
RunCommands(CommandFile="..\..\..\commands\ReadTableFromExcel\test-ReadTableFromExcel-TableID.gp")
RunCommands(CommandFile="..\..\..\commands\ReadTableFromExcel\test-ReadTableFromExcel-Worksheet.gp")
RunCommands(CommandFile="..\..\..\commands\ReadTableFromExcel\test-ReadTableFromExcel-xls.gp")
RunCommands(CommandFile="..\..\..\commands\ReadTableFromExcel\test-ReadTableFromExcel-xlsx.gp")
RunCommands(CommandFile="..\..\..\commands\RemoveFile\test-RemoveFile.gp")
RunCommands(CommandFile="..\..\..\commands\RemoveGeoLayerAttributes\test-RemoveGeoLayerAttributes-InvalidAttributeName-ExpectFail.gp",ExpectedStatus="Failure")
RunCommands(CommandFile="..\..\..\commands\RemoveGeoLayerAttributes\test-RemoveGeoLayerAttributes-InvalidGeoLayer-ExpectFail.gp",ExpectedStatus="Failure")
RunCommands(CommandFile="..\..\..\commands\RemoveGeoLayerAttributes\test-RemoveGeoLayerAttributes-Line-Memory-multiAttribute.gp")
RunCommands(CommandFile="..\..\..\commands\RemoveGeoLayerAttributes\test-RemoveGeoLayerAttributes-Line-Memory-oneAttribute.gp")
RunCommands(CommandFile="..\..\..\commands\RemoveGeoLayerAttributes\test-RemoveGeoLayerAttributes-Line-OnDisk-multiAttribute.gp")
RunCommands(CommandFile="..\..\..\commands\RemoveGeoLayerAttributes\test-RemoveGeoLayerAttributes-Line-OnDisk-oneAttribute.gp")
RunCommands(CommandFile="..\..\..\commands\RemoveGeoLayerAttributes\test-RemoveGeoLayerAttributes-Lines-OnDisk-multiAttribute.gp")
RunCommands(CommandFile="..\..\..\commands\RemoveGeoLayerAttributes\test-RemoveGeoLayerAttributes-Lines-OnDisk-oneAttribute.gp")
RunCommands(CommandFile="..\..\..\commands\RenameGeoLayerAttribute\test-RenameGeoLayerAttribute-Line-Memory.gp")
RunCommands(CommandFile="..\..\..\commands\RenameGeoLayerAttribute\test-RenameGeoLayerAttribute-Line-OnDisk.gp")
RunCommands(CommandFile="..\..\..\commands\RenameGeoLayerAttribute\test-RenameGeoLayerAttribute-Point-Memory.gp")
RunCommands(CommandFile="..\..\..\commands\RenameGeoLayerAttribute\test-RenameGeoLayerAttribute-Point-OnDisk.gp")
RunCommands(CommandFile="..\..\..\commands\RenameGeoLayerAttribute\test-RenameGeoLayerAttribute-Polygon-Memory.gp")
RunCommands(CommandFile="..\..\..\commands\RenameGeoLayerAttribute\test-RenameGeoLayerAttribute-Polygon-OnDisk.gp")
RunCommands(CommandFile="..\..\..\commands\RunGdalProgram\test-RunGdalProgram.gp")
RunCommands(CommandFile="..\..\..\commands\RunOgrProgram\test-RunOgrProgram.gp")
RunCommands(CommandFile="..\..\..\commands\RunProgram\test-RunProgram-cat.gp")
RunCommands(CommandFile="..\..\..\commands\RunProgram\test-RunProgram-echo-env.gp")
RunCommands(CommandFile="..\..\..\commands\RunProgram\test-RunProgram-helloworld.gp")
RunCommands(CommandFile="..\..\..\commands\SetGeoLayerCRS\test-SetGeoLayerCRS-Reproject-SameCRS-ExpectWarning.gp",ExpectedStatus="Warning")
RunCommands(CommandFile="..\..\..\commands\SetGeoLayerCRS\test-SetGeoLayerCRS-Reproject.gp")
RunCommands(CommandFile="..\..\..\commands\SetGeoLayerProperty\test-SetGeoLayerProperty.gp")
RunCommands(CommandFile="..\..\..\commands\SetPropertyFromGeoLayer\test-SetPropertyFromGeoLayer.gp")
RunCommands(CommandFile="..\..\..\commands\SetProperty\test-SetProperty-env.gp")
RunCommands(CommandFile="..\..\..\commands\SetProperty\test-SetProperty.gp")
RunCommands(CommandFile="..\..\..\commands\SimplifyGeoLayerGeometry\test-SimplifyGeoLayerGeometry-Line-Tolerance50.gp")
RunCommands(CommandFile="..\..\..\commands\SimplifyGeoLayerGeometry\test-SimplifyGeoLayerGeometry-Point-ExpectFail.gp",ExpectedStatus="Failure")
RunCommands(CommandFile="..\..\..\commands\SimplifyGeoLayerGeometry\test-SimplifyGeoLayerGeometry-Polygon-Tolerance100.gp")
RunCommands(CommandFile="..\..\..\commands\SimplifyGeoLayerGeometry\test-SimplifyGeoLayerGeometry-Polygon-Tolerance1000.gp")
RunCommands(CommandFile="..\..\..\commands\SplitGeoLayerByAttribute\test-SplitGeoLayerByAttribute-points.gp")
RunCommands(CommandFile="..\..\..\commands\StartLog\test-StartLog.gp")
RunCommands(CommandFile="..\..\..\commands\UnzipFile\test-UnzipFile-NonMatchingFileType-ExpectFail.gp",ExpectedStatus="Failure")
RunCommands(CommandFile="..\..\..\commands\UnzipFile\test-UnzipFile-Tar.gp")
RunCommands(CommandFile="..\..\..\commands\UnzipFile\test-UnzipFile-Txt-ExpectFail.gp",ExpectedStatus="Failure")
RunCommands(CommandFile="..\..\..\commands\UnzipFile\test-UnzipFile-Zip-OutputFolder.gp")
RunCommands(CommandFile="..\..\..\commands\UnzipFile\test-UnzipFile-Zip.gp")
RunCommands(CommandFile="..\..\..\commands\WebGet\test-WebGet-DownloadableFile.gp")
RunCommands(CommandFile="..\..\..\commands\WebGet\test-WebGet-DownloadableZipFile.gp")
RunCommands(CommandFile="..\..\..\commands\WriteGeoLayerPropertiesToFile\test-WriteGeoLayerPropertiesToFile-IncludeProperties-NameValue-Ascending.gp")
RunCommands(CommandFile="..\..\..\commands\WriteGeoLayerToDelimitedFile\test-WriteGeoLayerToDelimitedFile-Line-OutputGeometry-WKT.gp")
RunCommands(CommandFile="..\..\..\commands\WriteGeoLayerToDelimitedFile\test-WriteGeoLayerToDelimitedFile-Line-OutputGeometry-XY-ExpectFail.gp",ExpectedStatus="Failure")
RunCommands(CommandFile="..\..\..\commands\WriteGeoLayerToDelimitedFile\test-WriteGeoLayerToDelimitedFile-Points-OutputCRS.gp")
RunCommands(CommandFile="..\..\..\commands\WriteGeoLayerToDelimitedFile\test-WriteGeoLayerToDelimitedFile-Points.gp")
RunCommands(CommandFile="..\..\..\commands\WriteGeoLayerToDelimitedFile\test-WriteGeoLayerToDelimitedFile-Polygon-OutputDelimiter-WKT.gp")
RunCommands(CommandFile="..\..\..\commands\WriteGeoLayerToGeoJSON\test-WriteGeoLayerToGeoJSON-Line-OutputCRS.gp")
RunCommands(CommandFile="..\..\..\commands\WriteGeoLayerToGeoJSON\test-WriteGeoLayerToGeoJSON-Line-OutputPrecision.gp")
RunCommands(CommandFile="..\..\..\commands\WriteGeoLayerToKML\test-WriteGeoLayerToKML-Line.gp")
RunCommands(CommandFile="..\..\..\commands\WriteGeoLayerToKML\test-WriteGeoLayerToKML-Points-PlacemarkDescriptionAttribute.gp")
RunCommands(CommandFile="..\..\..\commands\WriteGeoLayerToKML\test-WriteGeoLayerToKML-Points-PlacemarkNameAttribute.gp")
RunCommands(CommandFile="..\..\..\commands\WriteGeoLayerToKML\test-WriteGeoLayerToKML-Points.gp")
RunCommands(CommandFile="..\..\..\commands\WriteGeoLayerToKML\test-WriteGeoLayerToKML-Polygon.gp")
RunCommands(CommandFile="..\..\..\commands\WriteGeoLayerToShapefile\test-WriteGeoLayerToShapefile-Line-OutputCRS.gp")
RunCommands(CommandFile="..\..\..\commands\WriteGeoLayerToShapefile\test-WriteGeoLayerToShapefile-Line-ZipOutput-ExpectFail.gp",ExpectedStatus="Failure")
RunCommands(CommandFile="..\..\..\commands\WritePropertiesToFile\test-WritePropertiesToFile-IncludeProperties-NameTypeValue-Ascending.gp")
RunCommands(CommandFile="..\..\..\commands\WritePropertiesToFile\test-WritePropertiesToFile-IncludeProperties-NameTypeValue-Descending.gp")
RunCommands(CommandFile="..\..\..\commands\WritePropertiesToFile\test-WritePropertiesToFile-IncludeProperties-NameTypeValuePython-Ascending.gp")
RunCommands(CommandFile="..\..\..\commands\WritePropertiesToFile\test-WritePropertiesToFile-IncludeProperties-NameValue-Ascending.gp")
RunCommands(CommandFile="..\..\..\commands\WriteRasterGeoLayerToFile\test-WriteRasterGeoLayerToFile-tif.gp")
RunCommands(CommandFile="..\..\..\commands\WriteTableToDelimitedFile\test-WriteTableToDelimitedFile-ColumnsToExclude.gp")
RunCommands(CommandFile="..\..\..\commands\WriteTableToDelimitedFile\test-WriteTableToDelimitedFile-ColumnsToInclude.gp")
RunCommands(CommandFile="..\..\..\commands\WriteTableToDelimitedFile\test-WriteTableToDelimitedFile-Delimiter.gp")
RunCommands(CommandFile="..\..\..\commands\WriteTableToDelimitedFile\test-WriteTableToDelimitedFile-ExcludeIndex.gp")
RunCommands(CommandFile="..\..\..\commands\WriteTableToDelimitedFile\test-WriteTableToDelimitedFile-InvalidDelimiter-ExpectFail.gp",ExpectedStatus="Failure")
RunCommands(CommandFile="..\..\..\commands\WriteTableToDelimitedFile\test-WriteTableToDelimitedFile-InvalidWriteIndexColumn-ExpectFail.gp",ExpectedStatus="Failure")
RunCommands(CommandFile="..\..\..\commands\WriteTableToDelimitedFile\test-WriteTableToDelimitedFile-csv.gp")
RunCommands(CommandFile="..\..\..\commands\WriteTableToDelimitedFile\test-WriteTableToDelimitedFile-txt.gp")
RunCommands(CommandFile="..\..\..\commands\WriteTableToExcel\test-WriteTableToExcel-ColumnsToExclude.gp")
RunCommands(CommandFile="..\..\..\commands\WriteTableToExcel\test-WriteTableToExcel-ColumnsToInclude.gp")
RunCommands(CommandFile="..\..\..\commands\WriteTableToExcel\test-WriteTableToExcel-existingFileNewWorksheet.gp")
RunCommands(CommandFile="..\..\..\commands\WriteTableToExcel\test-WriteTableToExcel-existingFileOverwriteWorksheet.gp")
RunCommands(CommandFile="..\..\..\commands\WriteTableToExcel\test-WriteTableToExcel-newFile.gp")
#----------------
# The following end commands were imported from:
#   D:\Users\steve\owf-dev\GeoProcessor\git-repos\owf-app-geoprocessor-python-test\test\suites\general\create\create-regression-test-command-file-end.gp
# Command file to finish the automated tests:
# - output files use current time as ${NowString} from main command file so can compare test results over time
# - write the summary table to CSV and Excel files
# - specify a results folder in the location where the test suite will be run
# - TODO smalers 2023-03-08 table results are not yet enabled but copy from TSToo to show how it needs to be done
/*
WriteTableToDelimitedFile(TableID="TestResults",OutputFile="Results/RunRegressionTest_commands_general_Windows_out_${NowString}.csv",WriteHeaderComments=False)
ReadTableFromDelimitedFile(TableID="StyleTable",InputFile="StyleTable.csv")
ReadTableFromDelimitedFile(TableID="ConditionTable",InputFile="ConditionTable.csv")
NewExcelWorkbook(OutputFile="Results/RunRegressionTest_commands_general_Windows_out_${NowString}.xlsx",Worksheets="TestResults",KeepOpen=True)
SetExcelWorksheetViewProperties(OutputFile="Results/RunRegressionTest_commands_general_Windows_out_${NowString}.xlsx",Worksheet="TestResults",KeepOpen=True,FreezePaneRowBelowSplit=2)
WriteTableToExcel(TableID="TestResults",OutputFile="Results/RunRegressionTest_commands_general_Windows_out_${NowString}.xlsx",Worksheet="TestResults",ExcelAddress="A1",ExcelColumnNames=FirstRowInRange,ColumnWidths="Default:Auto",ConditionTableID="ConditionTable",StyleTableID="StyleTable")
*/
#----------------