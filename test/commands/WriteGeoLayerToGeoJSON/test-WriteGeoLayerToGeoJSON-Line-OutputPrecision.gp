StartLog(LogFile="results/test-WriteGeoLayerToGeoJSON-Line-OutputPrecision.gp.log")
# Test the functionality of the OutputPrecision parameter
# - testing that the coordinate precision is changed when writing a GeoLayer to a GeoJSON 
# - testing with a line layer (with 15 coordinate precision)
# - line is written out with 3 coordinate precision
# Remove the result line geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-WriteGeoLayerToGeoJSON-Line-OutputPrecision-out.geojson",IfSourceFileNotFound="Ignore")
# Read the line GeoJSON (with GeoLayerID of "line") into the GeoProcessor 
ReadGeoLayerFromGeoJSON(InputFile="data/line.geojson",GeoLayerID="line")
# Uncomment below line to recreate expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="line",OutputFile="expected-results/test-WriteGeoLayerToGeoJSON-Line-OutputPrecision-out",OutputPrecision="3")
# Write the line Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="line",OutputFile="results/test-WriteGeoLayerToGeoJSON-Line-OutputPrecision-out",OutputPrecision="3")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-WriteGeoLayerToGeoJSON-Line-OutputPrecision-out.geojson",InputFile2="results/test-WriteGeoLayerToGeoJSON-Line-OutputPrecision-out.geojson",AllowedDiffCount="0",IfDifferent="Warn")
