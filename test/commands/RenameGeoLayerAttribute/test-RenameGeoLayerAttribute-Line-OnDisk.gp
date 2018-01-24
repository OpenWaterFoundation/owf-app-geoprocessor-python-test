StartLog(LogFile="results/test-RenameGeoLayerAttribute-Line-OnDisk.gp.log")
# Test renaming a GeoLayer's attribute
# - input GeoJSON is a single-feature line layer
# - the attribute is being renamed from a GeoLayer written on disk
# Remove the results from the last run of this test, if exists.
RemoveFile(SourceFile="results/test-RenameGeoLayerAttribute-Line-OnDisk-out.geojson", IfSourceFileNotFound="Ignore")
# Make a copy of the line GeoJSON file. 
CopyFile(SourceFile="data/line.geojson", DestinationFile="data/line_copy.geojson")
# Read the copied line GeoJSON file into the GeoProcessor (with GeoLayerID of "line").
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/line_copy.geojson", GeoLayerID="line")
# Rename the `toRename` attribute value from GeoLayer "line" to `newName`.
RenameGeoLayerAttribute(GeoLayerID="line", ExistingAttributeName="toRename", NewAttributeName="newName")
# Uncomment the next line to reproduce the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="line", OutputFile="expected-results/test-RenameGeoLayerAttribute-Line-OnDisk-out")
# Write the line Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="line", OutputFile="results/test-RenameGeoLayerAttribute-Line-OnDisk-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-RenameGeoLayerAttribute-Line-OnDisk-out.geojson", InputFile2="results/test-RenameGeoLayerAttribute-Line-OnDisk-out.geojson",IfDifferent="Warn")
# Free the "line" GeoLayer from the GeoProcessor.
FreeGeoLayer(GeoLayerID="line")
# Remove the date/line_copy.geojson file from the the testing environment.
RemoveFile(SourceFile="data/line_copy.geojson", IfSourceFileNotFound="Ignore")