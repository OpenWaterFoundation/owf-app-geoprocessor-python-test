StartLog(LogFile="results/test-RemoveGeoLayerAttribute-Line-OnDisk.gp.log")
# Test removing an attribute from a GeoLayer
# - input GeoJSON is a single-feature line layer
# - the attribute is being removed from a GeoLayer written on disk
# Remove the results from the last run of this test, if exists.
RemoveFile(SourceFile="results/test-RemoveGeoLayerAttribute-Line-OnDisk-out.geojson", IfSourceFileNotFound="Ignore")
# Make a copy of the line GeoJSON file. 
CopyFile(SourceFile="data/line.geojson", DestinationFile="data/line_copy.geojson")
# Read the copied line GeoJSON file into the GeoProcessor (with GeoLayerID of "line").
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/line_copy.geojson", GeoLayerID="line")
# Remove the `toRemove` attribute value from GeoLayer "line".
RemoveGeoLayerAttribute(GeoLayerID="line", AttributeName="toRemove")
# Uncomment the next line to reproduce the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="line", OutputFile="expected-results/test-RemoveGeoLayerAttribute-Line-OnDisk-out")
# Write the line Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="line", OutputFile="results/test-RemoveGeoLayerAttribute-Line-OnDisk-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-RemoveGeoLayerAttribute-Line-OnDisk-out.geojson", InputFile2="results/test-RemoveGeoLayerAttribute-Line-OnDisk-out.geojson",IfDifferent="Warn")
# Free the "line" GeoLayer from the GeoProcessor.
FreeGeoLayer(GeoLayerID="line")
# Remove the date/line_copy.geojson file from the the testing environment.
RemoveFile(SourceFile="data/line_copy.geojson", IfSourceFileNotFound="Ignore")