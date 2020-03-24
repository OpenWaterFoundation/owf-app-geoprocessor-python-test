StartLog(LogFile="results/test-ReadGeoLayerFromShapefile-Line.gp.log")
# Test reading a GeoLayer from a Shapefile 
# - Shapefile is a line layer
# Remove the result line GeoJSON from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayerFromShapefile-Line-out.geojson",IfSourceFileNotFound="Ignore")
# Read the line Shapefile (with GeoLayerID of "line") into the GeoProcessor 
ReadGeoLayerFromShapefile(InputFile="data/line.shp",GeoLayerID="line")
# Uncomment the below line to recreate the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="line",OutputFile="expected-results/test-ReadGeoLayerFromShapefile-Line-out")
# Write the line Geolayer to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="line",OutputFile="results/test-ReadGeoLayerFromShapefile-Line-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-ReadGeoLayerFromShapefile-Line-out.geojson",InputFile2="results/test-ReadGeoLayerFromShapefile-Line-out.geojson",IfDifferent="Warn")
