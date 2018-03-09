StartLog(LogFile="results/test-RemoveGeoLayerAttributes-Lines-OnDisk-multiAttribute.gp.log")
# Test removing an attribute from a GeoLayer
# - input GeoJSON is a multi-feature lines layer
# - two attribute are being removed
# - the attributes are being removed from an on-disk GeoLayer
# Remove the results from the last run of this test, if exists.
RemoveFile(SourceFile="results/test-RemoveGeoLayerAttributes-Lines-OnDisk-multiAttribute-out.geojson", IfSourceFileNotFound="Ignore")
# Make a copy of the lines GeoJSON file. 
CopyFile(SourceFile="data/lines.geojson", DestinationFile="data/lines_copy.geojson")
# Read the copied lines GeoJSON file into the GeoProcessor (with GeoLayerID of "lines").
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/lines_copy.geojson", GeoLayerID="lines")
# Remove the `toRemove` and the `toRemove2` attribute values from GeoLayer "lines".
RemoveGeoLayerAttributes(GeoLayerID="lines", AttributeNames="toRemove, toRemove2")
# Uncomment the next line to reproduce the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="lines", OutputFile="expected-results/test-RemoveGeoLayerAttributes-Lines-OnDisk-multiAttribute-out")
# Write the lines Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="lines", OutputFile="results/test-RemoveGeoLayerAttributes-Lines-OnDisk-multiAttribute-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-RemoveGeoLayerAttributes-Lines-OnDisk-multiAttribute-out.geojson", InputFile2="results/test-RemoveGeoLayerAttributes-Lines-OnDisk-multiAttribute-out.geojson",IfDifferent="Warn")
# Free the "lines" GeoLayer from the GeoProcessor.
FreeGeoLayer(GeoLayerID="lines")
# Remove the date/lines_copy.geojson file from the the testing environment.
RemoveFile(SourceFile="data/lines_copy.geojson", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="data/lines_copy.geojson.tmp", IfSourceFileNotFound="Ignore")