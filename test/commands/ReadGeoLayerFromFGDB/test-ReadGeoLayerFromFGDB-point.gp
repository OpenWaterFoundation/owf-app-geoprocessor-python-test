StartLog(LogFile="results/test-ReadGeoLayerFromFGDB-point.gp.log")
# Test reading a GeoLayer from a the feature classes of a file geodatabase 
# 	- read a feature class with POINT geometry 
# Remove the result point geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayerFromFGDB-point-out.geojson", IfSourceFileNotFound="Ignore")
# Read the `point` feature class from the file geodatabase
ReadGeoLayerFromFGDB(SpatialDataFolder="data/ReadGeoLayerFromFGDB-test.gdb", FeatureClass="point", GeoLayerID="point")
# Uncomment the next line to reproduce the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="point", OutputFile="expected-results/test-ReadGeoLayerFromFGDB-point-out")
# Write the point Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="point", OutputFile="results/test-ReadGeoLayerFromFGDB-point-out")
# Compare the results to the expected results
CompareFiles(InputFile1="results/test-ReadGeoLayerFromFGDB-point-out.geojson", InputFile2="expected-results/test-ReadGeoLayerFromFGDB-point-out.geojson", IfDifferent="Warn")