StartLog(LogFile="results/test-AddGeoLayerAttribute-Line-OnDisk.gp.log")
# Test removing an attribute from a GeoLayer
# - input GeoJSON is a single-feature line layer
# - the attribute is being added to an on-disk GeoLayer
# Remove the results from the last run of this test, if exists.
RemoveFile(SourceFile="results/test-AddGeoLayerAttribute-Line-OnDisk-out.geojson", IfSourceFileNotFound="Ignore")
# Read the line GeoJSON (with GeoLayerID of "line") into the GeoProcessor
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/line.geojson", GeoLayerID="line")
# Copy the GeoLayer
CopyGeoLayer(GeoLayerID="line")
# Add the `addTest` attribute value to GeoLayer "polygon".
AddGeoLayerAttribute(GeoLayerID="line_copy", AttributeName="addTest", AttributeType="string", InitialValue="test")
# Uncomment the next line to reproduce the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="line_copy", OutputFile="expected-results/test-AddGeoLayerAttribute-Line-OnDisk-out")
# Write the in-memory line Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="line_copy", OutputFile="results/test-AddGeoLayerAttribute-Line-OnDisk-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-AddGeoLayerAttribute-Line-OnDisk-out.geojson", InputFile2="results/test-AddGeoLayerAttribute-Line-OnDisk-out.geojson",IfDifferent="Warn")