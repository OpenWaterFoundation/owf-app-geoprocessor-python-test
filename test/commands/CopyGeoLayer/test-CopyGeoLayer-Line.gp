StartLog(LogFile="results/test-CopyGeoLayer-Line.gp.log")
# Test copying a GeoLayer 
# - data is a GeoJSON line layer
# Remove the result line geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-CopyGeoLayer-Line-out.geojson", IfSourceFileNotFound="Ignore")
# Read the line GeoJSON (with GeoLayerID of "line") into the GeoProcessor 
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/line.geojson", GeoLayerID="line")
# Copy the GeoLayer 
CopyGeoLayer(GeoLayerID="line")
# Uncomment the line below to recreate the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="line_copy", OutputFile="expected-results/test-CopyGeoLayer-Line-out")
# Write the copied Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="line_copy", OutputFile="results/test-CopyGeoLayer-Line-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-CopyGeoLayer-Line-out.geojson", InputFile2="results/test-CopyGeoLayer-Line-out.geojson",IfDifferent="Warn")