StartLog(LogFile="results/test-WriteGeoLayerToShapefile-Line-ExtendedOutput-CompressedOutput-ExpectFail.gp.log")
# Test the functionality of the CompressedOutput parameter and the ExtendedOutput parameter
# - testing that the Compressed Output (set to True, not Default of False) functions properly
# - testing that the Extended Output (set to False, not Default of True) functions properly
# - line shapefile input will be written out to Shapefile output. Only a zipped file is expected.
# - expect FAIL when comparing .shp becasue they shoud not exist (by setting ExtendedOutput to FALSE)
#@expectedStatus Failure
# Remove the result zip file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-WriteGeoLayerToShapefile-Line-ExtendedOutput-CompressedOutput-ExpectFail-out.zip", IfSourceFileNotFound="Ignore")
# Read the line Shapefile (with GeoLayerID of "line") into the GeoProcessor 
ReadGeoLayerFromShapefile(SpatialDataFile="data/line.shp", GeoLayerID="line")
# Uncomment below line to recreate expected results - only write zipped file
#WriteGeoLayerToShapefile(GeoLayerID="line", OutputFile="expected-results/test-WriteGeoLayerToShapefile-Line-ExtendedOutput-CompressedOutput-ExpectFail-out", ExtendedOutput="False", CompressedOutput="True")
# Write the line Geolayer to a Shapefile file - only write zipped file
WriteGeoLayerToShapefile(GeoLayerID="line", OutputFile="results/test-WriteGeoLayerToShapefile-Line-ExtendedOutput-CompressedOutput-ExpectFail-out", ExtendedOutput="False", CompressedOutput="True")
# Compare the results to the expected results
CompareFiles(InputFile1="results/test-WriteGeoLayerToShapefile-Line-ExtendedOutput-CompressedOutput-ExpectFail-out.shp", InputFile2="expected-results/test-WriteGeoLayerToShapefile-Line-ExtendedOutput-CompressedOutput-ExpectFail-out.shp",IfDifferent="Warn")