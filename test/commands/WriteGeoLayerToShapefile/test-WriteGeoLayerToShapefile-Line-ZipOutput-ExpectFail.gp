StartLog(LogFile="results/test-WriteGeoLayerToShapefile-Line-ZipOutput-ExpectFail.gp.log")
# Test the functionality of the ZipOutput parameter
# - testing that the ZipOutput (set to True, not default False) functions properly
# - line shapefile input will be written out to Shapefile output. Only a zipped file is expected.
# - expect FAIL when comparing .shp becasue they shoud not exist (by setting ZipOutput to True)
#@expectedStatus Failure
# Remove the result zip file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-WriteGeoLayerToShapefile-Line-ZipOutput-ExpectFail-out.zip", IfSourceFileNotFound="Ignore")
# Read the line Shapefile (with GeoLayerID of "line") into the GeoProcessor 
ReadGeoLayerFromShapefile(SpatialDataFile="data/line.shp", GeoLayerID="line")
# Uncomment below line to recreate expected results - only write zipped file
#WriteGeoLayerToShapefile(GeoLayerID="line", OutputFile="expected-results/test-WriteGeoLayerToShapefile-Line-ZipOutput-ExpectFail-out", ZipOutput="True")
# Write the line Geolayer to a Shapefile file - only write zipped file
WriteGeoLayerToShapefile(GeoLayerID="line", OutputFile="results/test-WriteGeoLayerToShapefile-Line-ZipOutput-ExpectFail-out", ZipOutput="True")
# Compare the results to the expected results
CompareFiles(InputFile1="results/test-WriteGeoLayerToShapefile-Line-ZipOutput-ExpectFail-out.shp", InputFile2="expected-results/test-WriteGeoLayerToShapefile-Line-ZipOutput-ExpectFail-out.shp",IfDifferent="Warn")
