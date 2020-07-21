StartLog(LogFile="results/test-ReadGeoLayerFromGeoJSON-Line.gp.log")
#
# Test reading a GeoLayer from a GeoJSON
# - GeoJSON is a line layer
#
#@docExample
#
# Remove the result line geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayerFromGeoJSON-Line-out.geojson",IfSourceFileNotFound="Ignore")
# Read the line GeoJSON (with GeoLayerID of "line") into the GeoProcessor
ReadGeoLayerFromGeoJSON(InputFile="data/line.geojson",GeoLayerID="line")
# Uncomment the line below to recreate the expected results
# WriteGeoLayerToGeoJSON(GeoLayerID="line",OutputFile="expected-results/test-ReadGeoLayerFromGeoJSON-Line-out.geojson")
# Write the line Geolayer to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="line",OutputFile="results/test-ReadGeoLayerFromGeoJSON-Line-out.geojson")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-ReadGeoLayerFromGeoJSON-Line-out.geojson",InputFile2="results/test-ReadGeoLayerFromGeoJSON-Line-out.geojson",IfDifferent="Warn")