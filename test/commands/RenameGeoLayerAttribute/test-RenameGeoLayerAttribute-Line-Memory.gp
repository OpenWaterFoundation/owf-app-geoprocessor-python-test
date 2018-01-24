StartLog(LogFile="results/test-RenameGeoLayerAttribute-Line-Memory.gp.log")
# Test removing an attribute from a GeoLayer
# - input GeoJSON is a single-feature line layer
# - the attribute is being renamed from an in-memory GeoLayer
# Remove the results from the last run of this test, if exists.
RemoveFile(SourceFile="results/test-RenameGeoLayerAttribute-Line-Memory-out.geojson", IfSourceFileNotFound="Ignore")
# Read the line GeoJSON (with GeoLayerID of "line") into the GeoProcessor
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/line.geojson", GeoLayerID="line")
# Copy the GeoLayer
CopyGeoLayer(GeoLayerID="line")
# Rename the `toRename` attribute value from GeoLayer "line" to `newName`.
RenameGeoLayerAttribute(GeoLayerID="line_copy", ExistingAttributeName="toRename", NewAttributeName="newName")
# Uncomment the next line to reproduce the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="line_copy", OutputFile="expected-results/test-RenameGeoLayerAttribute-Line-Memory-out")
# Write the in-memory line Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="line_copy", OutputFile="results/test-RenameGeoLayerAttribute-Line-Memory-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-RenameGeoLayerAttribute-Line-Memory-out.geojson", InputFile2="results/test-RenameGeoLayerAttribute-Line-Memory-out.geojson",IfDifferent="Warn")