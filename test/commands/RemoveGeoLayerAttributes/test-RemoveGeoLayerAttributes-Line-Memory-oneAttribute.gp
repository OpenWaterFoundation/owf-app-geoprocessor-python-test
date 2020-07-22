StartLog(LogFile="results/test-RemoveGeoLayerAttributes-Line-Memory-oneAttribute.gp.log")
# Test removing an attribute from a GeoLayer
# - input GeoJSON is a single-feature line layer
# - the attribute is being removed from an in-memory GeoLayer
# Remove the results from the last run of this test, if exists.
RemoveFile(SourceFile="results/test-RemoveGeoLayerAttributes-Line-Memory-oneAttribute-out.geojson",IfSourceFileNotFound="Ignore")
# Read the line GeoJSON (with GeoLayerID of "line") into the GeoProcessor
ReadGeoLayerFromGeoJSON(InputFile="data/line.geojson",GeoLayerID="line")
# Copy the GeoLayer
CopyGeoLayer(GeoLayerID="line")
# Remove the `toRemove` attribute values from the GeoLayer "line_copy"
RemoveGeoLayerAttributes(GeoLayerID="line_copy",AttributeNames="toRemove")
# Uncomment the next line to reproduce the expected results
# WriteGeoLayerToGeoJSON(GeoLayerID="line_copy",OutputFile="expected-results/test-RemoveGeoLayerAttributes-Line-Memory-oneAttribute-out")
# Write the in-memory line Geolayer to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="line_copy",OutputFile="results/test-RemoveGeoLayerAttributes-Line-Memory-oneAttribute-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-RemoveGeoLayerAttributes-Line-Memory-oneAttribute-out.geojson",InputFile2="results/test-RemoveGeoLayerAttributes-Line-Memory-oneAttribute-out.geojson",IfDifferent="Warn")
# Free the "line" GeoLayer from the GeoProcessor.
FreeGeoLayer(GeoLayerID="line")
# Remove the date/line_copy.geojson file from the the testing environment.
RemoveFile(SourceFile="data/line_copy.geojson",IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="data/line_copy.geojson.tmp",IfSourceFileNotFound="Ignore")