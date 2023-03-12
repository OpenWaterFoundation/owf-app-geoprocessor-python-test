StartLog(LogFile="results/test-ReadGeoLayersFromFGDB-GeoLayerID_prefix.gp.log")
# Tests GeoLayerID_prefix parameter of ReadGeoLayersFromFGDB command:
# - the file geodatabase holds a point, a line and a polygon feature class
# - only going to write out point layer to test parameter because overall functionality is already tested in
# - test-ReadGeoLayersFromFGDB.gp
# Remove the result point geojson file from the last run of the test, if existing.
RemoveFile(SourceFile="results/test-ReadGeoLayersFromFGDB-GeoLayerID_prefix-point-out.geojson",IfSourceFileNotFound="Ignore")
# Read all available GeoLayers from the file geodatabase.
ReadGeoLayersFromFGDB(InputFolder="data/ReadGeoLayersFromFGDB-test.gdb",ReadOnlyOneFeatureClass="False",GeoLayerID_prefix="testPrefix")
# Uncomment the next line to reproduce the expected results.
#WriteGeoLayerToGeoJSON(GeoLayerID="testPrefix_point",OutputFile="expected-results/test-ReadGeoLayersFromFGDB-GeoLayerID_prefix-point-out")
# Write the point to a GeoJSON file.
WriteGeoLayerToGeoJSON(GeoLayerID="testPrefix_point",OutputFile="results/test-ReadGeoLayersFromFGDB-GeoLayerID_prefix-point-out")
# Compare the results to the expected results.
CompareFiles(InputFile1="results/test-ReadGeoLayersFromFGDB-GeoLayerID_prefix-point-out.geojson",InputFile2="expected-results/test-ReadGeoLayersFromFGDB-GeoLayerID_prefix-point-out.geojson",IfDifferent="Warn")