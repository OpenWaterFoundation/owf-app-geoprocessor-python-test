StartLog(LogFile="results/test-ReadGeoLayersFromFGDB-OnlyOne-polygon.gp.log")
# Test reading a GeoLayer from a the feature classes of a file geodatabase 
# - read a feature class with POLYGON geometry 
# - read only one specific GeoLayer
#
# Remove the result polygon geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayersFromFGDB-OnlyOne-polygon-out.geojson",IfSourceFileNotFound="Ignore")
# Read the `polygon` feature class from the file geodatabase
ReadGeoLayersFromFGDB(InputFolder="data/ReadGeoLayersFromFGDB-test.gdb",ReadOnlyOneFeatureClass="True",FeatureClass="polygon",GeoLayerID="polygon")
# Uncomment the next line to reproduce the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="polygon",OutputFile="expected-results/test-ReadGeoLayersFromFGDB-OnlyOne-polygon-out")
# Write the polygon Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="polygon",OutputFile="results/test-ReadGeoLayersFromFGDB-OnlyOne-polygon-out")
# Compare the results to the expected results
CompareFiles(InputFile1="results/test-ReadGeoLayersFromFGDB-OnlyOne-polygon-out.geojson",InputFile2="expected-results/test-ReadGeoLayersFromFGDB-OnlyOne-polygon-out.geojson",IfDifferent="Warn")
