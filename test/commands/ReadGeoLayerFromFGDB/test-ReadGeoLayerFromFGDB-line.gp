StartLog(LogFile="results/test-ReadGeoLayerFromFGDB-line.gp.log")
# Test reading a GeoLayer from a the feature classes of a file geodatabase 
# 	- read a feature class with LINE geometry 
# Remove the result line geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayerFromFGDB-line-out.geojson", IfSourceFileNotFound="Ignore")
# Read the `line` feature class from the file geodatabase
ReadGeoLayerFromFGDB(SpatialDataFolder="data/ReadGeoLayerFromFGDB-test.gdb", FeatureClass="line", GeoLayerID="line")
# Uncomment the next line to reproduce the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="line", OutputFile="expected-results/test-ReadGeoLayerFromFGDB-line-out")
# Write the line Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="line", OutputFile="results/test-ReadGeoLayerFromFGDB-line-out")
# Compare the results to the expected results
CompareFiles(InputFile1="results/test-ReadGeoLayerFromFGDB-line-out.geojson", InputFile2="expected-results/test-ReadGeoLayerFromFGDB-line-out.geojson", IfDifferent="Warn")