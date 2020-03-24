StartLog(LogFile="results/test-RemoveGeoLayerAttributes-Line-OnDisk-multiAttribute.gp.log")
# Test removing an attribute from a GeoLayer
# - input GeoJSON is a single-feature line layer
# - two attribute are being removed
# - the attributes are being removed from an in-memory GeoLayer
# Remove the results from the last run of this test, if exists.
RemoveFile(SourceFile="results/test-RemoveGeoLayerAttributes-Line-OnDisk-multiAttribute-out.geojson",IfSourceFileNotFound="Ignore")
# Make a copy of the line GeoJSON file. 
CopyFile(SourceFile="data/line.geojson",DestinationFile="data/line_copy.geojson")
# Read the copied line GeoJSON file into the GeoProcessor (with GeoLayerID of "line").
ReadGeoLayerFromGeoJSON(InputFile="data/line_copy.geojson",GeoLayerID="line")
# Remove the `toRemove` and the `toRemove2` attribute values from GeoLayer "line".
RemoveGeoLayerAttributes(GeoLayerID="line",AttributeNames="toRemove,toRemove2")
# Uncomment the next line to reproduce the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="line",OutputFile="expected-results/test-RemoveGeoLayerAttributes-Line-OnDisk-multiAttribute-out")
# Write the line Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="line",OutputFile="results/test-RemoveGeoLayerAttributes-Line-OnDisk-multiAttribute-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-RemoveGeoLayerAttributes-Line-OnDisk-multiAttribute-out.geojson",InputFile2="results/test-RemoveGeoLayerAttributes-Line-OnDisk-multiAttribute-out.geojson",IfDifferent="Warn")
# Free the "line" GeoLayer from the GeoProcessor.
FreeGeoLayer(GeoLayerID="line")
# Remove the date/line_copy.geojson file from the the testing environment.
RemoveFile(SourceFile="data/line_copy.geojson",IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="data/line_copy.geojson.tmp",IfSourceFileNotFound="Ignore")
