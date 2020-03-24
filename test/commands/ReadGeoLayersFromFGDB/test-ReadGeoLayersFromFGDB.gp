StartLog(LogFile="results/test-ReadGeoLayersFromFGDB.gp.log")
# Test reading multiple GeoLayers from a the feature classes of a file geodatabase 
# - the file geodatabase holds a point, a line and a polygon feature class
# Remove the result point, line and polygon geojson files from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayersFromFGDB-point-out.geojson",IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-ReadGeoLayersFromFGDB-line-out.geojson",IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-ReadGeoLayersFromFGDB-polygon-out.geojson",IfSourceFileNotFound="Ignore")
# Read all available GeoLayers from the file geodatabase
ReadGeoLayersFromFGDB(InputFolder="data/ReadGeoLayersFromFGDB-test.gdb",ReadOnlyOneFeatureClass="False")
# Uncomment the next 3 lines to reproduce the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="point",OutputFile="expected-results/test-ReadGeoLayersFromFGDB-point-out")
#WriteGeoLayerToGeoJSON(GeoLayerID="line",OutputFile="expected-results/test-ReadGeoLayersFromFGDB-line-out")
#WriteGeoLayerToGeoJSON(GeoLayerID="polygon",OutputFile="expected-results/test-ReadGeoLayersFromFGDB-polygon-out")
# Write the point, line and polygon Geolayers to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="point",OutputFile="results/test-ReadGeoLayersFromFGDB-point-out")
WriteGeoLayerToGeoJSON(GeoLayerID="line",OutputFile="results/test-ReadGeoLayersFromFGDB-line-out")
WriteGeoLayerToGeoJSON(GeoLayerID="polygon",OutputFile="results/test-ReadGeoLayersFromFGDB-polygon-out")
# Compare the results to the expected results
CompareFiles(InputFile1="results/test-ReadGeoLayersFromFGDB-point-out.geojson",InputFile2="expected-results/test-ReadGeoLayersFromFGDB-point-out.geojson",IfDifferent="Warn")
CompareFiles(InputFile1="results/test-ReadGeoLayersFromFGDB-line-out.geojson",InputFile2="expected-results/test-ReadGeoLayersFromFGDB-line-out.geojson",IfDifferent="Warn")
CompareFiles(InputFile1="results/test-ReadGeoLayersFromFGDB-polygon-out.geojson",InputFile2="expected-results/test-ReadGeoLayersFromFGDB-polygon-out.geojson",IfDifferent="Warn")
