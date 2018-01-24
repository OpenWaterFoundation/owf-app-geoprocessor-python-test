StartLog(LogFile="results/test-RenameGeoLayerAttribute-Polygon-OnDisk.gp.log")
# Test renaming a GeoLayer's attribute
# - input GeoJSON is a single-feature polygon layer
# - the attribute is being renamed from a GeoLayer written on disk
# Remove the results from the last run of this test, if exists.
RemoveFile(SourceFile="results/test-RenameGeoLayerAttribute-Polygon-OnDisk-out.geojson", IfSourceFileNotFound="Ignore")
# Make a copy of the polygon GeoJSON file. 
CopyFile(SourceFile="data/polygon.geojson", DestinationFile="data/polygon_copy.geojson")
# Read the copied polygon GeoJSON file into the GeoProcessor (with GeoLayerID of "polygon").
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/polygon_copy.geojson", GeoLayerID="polygon")
# Rename the `toRename` attribute value from GeoLayer "polygon" to `newName`.
RenameGeoLayerAttribute(GeoLayerID="polygon", ExistingAttributeName="toRename", NewAttributeName="newName")
# Uncomment the next polygon to reproduce the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="polygon", OutputFile="expected-results/test-RenameGeoLayerAttribute-Polygon-OnDisk-out")
# Write the polygon Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="polygon", OutputFile="results/test-RenameGeoLayerAttribute-Polygon-OnDisk-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-RenameGeoLayerAttribute-Polygon-OnDisk-out.geojson", InputFile2="results/test-RenameGeoLayerAttribute-Polygon-OnDisk-out.geojson",IfDifferent="Warn")
# Free the "polygon" GeoLayer from the GeoProcessor.
FreeGeoLayer(GeoLayerID="polygon")
# Remove the date/polygon_copy.geojson file from the the testing environment.
RemoveFile(SourceFile="data/polygon_copy.geojson", IfSourceFileNotFound="Ignore")