StartLog(LogFile="results/test-ReadGeoLayerFromFGDB-polygon.gp.log")
# Test reading a GeoLayer from a the feature classes of a file geodatabase 
# 	- read a feature class with POLYGON geometry 
# Remove the result polygon geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayerFromFGDB-polygon-out.geojson", IfSourceFileNotFound="Ignore")
# Read the `polygon` feature class from the file geodatabase
ReadGeoLayerFromFGDB(SpatialDataFolder="data/ReadGeoLayerFromFGDB-test.gdb", FeatureClass="polygon", GeoLayerID="polygon")
# Uncomment the next line to reproduce the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="polygon", OutputFile="expected-results/test-ReadGeoLayerFromFGDB-polygon-out")
# Write the polygon Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="polygon", OutputFile="results/test-ReadGeoLayerFromFGDB-polygon-out")
# Compare the results to the expected results
CompareFiles(InputFile1="results/test-ReadGeoLayerFromFGDB-polygon-out.geojson", InputFile2="expected-results/test-ReadGeoLayerFromFGDB-polygon-out.geojson", IfDifferent="Warn")