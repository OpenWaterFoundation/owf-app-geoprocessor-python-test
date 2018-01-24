StartLog(LogFile="results/test-RemoveGeoLayerAttribute-Lines-OnDisk.gp.log")
# Test removing an attribute from a GeoLayer
# - input GeoJSON is a multi-feature lines layer
# - the attribute is being removed from a GeoLayer written on disk
# Remove the results from the last run of this test, if exists.
RemoveFile(SourceFile="results/test-RemoveGeoLayerAttribute-Lines-OnDisk-out.geojson", IfSourceFileNotFound="Ignore")
# Make a copy of the lines GeoJSON file. 
CopyFile(SourceFile="data/lines.geojson", DestinationFile="data/lines_copy.geojson")
# Read the copied lines GeoJSON file into the GeoProcessor (with GeoLayerID of "lines").
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/lines_copy.geojson", GeoLayerID="lines")
# Remove the `toRemove` attribute value from GeoLayer "lines".
RemoveGeoLayerAttribute(GeoLayerID="lines", AttributeName="toRemove")
# Uncomment the next lines to reproduce the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="lines", OutputFile="expected-results/test-RemoveGeoLayerAttribute-Lines-OnDisk-out")
# Write the lines Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="lines", OutputFile="results/test-RemoveGeoLayerAttribute-Lines-OnDisk-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-RemoveGeoLayerAttribute-Lines-OnDisk-out.geojson", InputFile2="results/test-RemoveGeoLayerAttribute-Lines-OnDisk-out.geojson",IfDifferent="Warn")
# Free the "lines" GeoLayer from the GeoProcessor.
FreeGeoLayer(GeoLayerID="lines")
# Remove the date/lines_copy.geojson file from the the testing environment.
RemoveFile(SourceFile="data/lines_copy.geojson", IfSourceFileNotFound="Ignore")