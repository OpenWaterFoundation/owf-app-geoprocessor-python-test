StartLog(LogFile="results/test-ReadGeoLayersFromFGDB-OnlyOne-point.gp.log")
# Test reading a GeoLayer from a the feature classes of a file geodatabase 
# - read a feature class with POINT geometry 
# - read only one specific GeoLayer
#
# Remove the result point geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayersFromFGDB-OnlyOne-point-out.geojson",IfSourceFileNotFound="Ignore")
# Read the `point` feature class from the file geodatabase
ReadGeoLayersFromFGDB(InputFolder="data/ReadGeoLayersFromFGDB-test.gdb",ReadOnlyOneFeatureClass="True",FeatureClass="point",GeoLayerID="point")
# Uncomment the next line to reproduce the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="point",OutputFile="expected-results/test-ReadGeoLayersFromFGDB-OnlyOne-point-out")
# Write the point Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="point",OutputFile="results/test-ReadGeoLayersFromFGDB-OnlyOne-point-out")
# Compare the results to the expected results
CompareFiles(InputFile1="results/test-ReadGeoLayersFromFGDB-OnlyOne-point-out.geojson",InputFile2="expected-results/test-ReadGeoLayersFromFGDB-OnlyOne-point-out.geojson",IfDifferent="Warn")
