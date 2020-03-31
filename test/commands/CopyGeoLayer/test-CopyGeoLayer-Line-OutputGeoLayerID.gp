StartLog(LogFile="results/test-CopyGeoLayer-Line-OutputGeoLayerID.gp.log")
# Test copying a GeoLayer (using OutputGeoLayerID parameter)
# - data is a GeoJSON line layer
#@docExample
# Remove the result line geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-CopyGeoLayer-Line-OutputGeoLayerID-out.geojson",IfSourceFileNotFound="Ignore")
# Read the line GeoJSON (with GeoLayerID of "line") into the GeoProcessor
ReadGeoLayerFromGeoJSON(InputFile="data/line.geojson",GeoLayerID="line")
# Copy the GeoLayer
CopyGeoLayer(GeoLayerID="line",OutputGeoLayerID="TestID")
# Uncomment the line below to recreate the expected results
# WriteGeoLayerToGeoJSON(GeoLayerID="TestID",OutputFile="expected-results/test-CopyGeoLayer-Line-OutputGeoLayerID-out.geojson")
# Write the copied Geolayer to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="TestID",OutputFile="results/test-CopyGeoLayer-Line-OutputGeoLayerID-out.geojson")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-CopyGeoLayer-Line-OutputGeoLayerID-out.geojson",InputFile2="results/test-CopyGeoLayer-Line-OutputGeoLayerID-out.geojson",IfDifferent="Warn")