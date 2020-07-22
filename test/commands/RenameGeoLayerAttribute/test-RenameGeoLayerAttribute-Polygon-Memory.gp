StartLog(LogFile="results/test-RenameGeoLayerAttribute-Polygon-Memory.gp.log")
# Test removing an attribute from a GeoLayer
# - input GeoJSON is a single-feature polygon layer
# - the attribute is being renamed from an in-memory GeoLayer
# Remove the results from the last run of this test, if exists.
RemoveFile(SourceFile="results/test-RenameGeoLayerAttribute-Polygon-Memory-out.geojson",IfSourceFileNotFound="Ignore")
# Read the polygon GeoJSON (with GeoLayerID of "polygon") into the GeoProcessor
ReadGeoLayerFromGeoJSON(InputFile="data/polygon.geojson",GeoLayerID="polygon")
# Copy the GeoLayer
CopyGeoLayer(GeoLayerID="polygon")
# Rename the `toRename` attribute value from GeoLayer "polygon" to `newName`.
RenameGeoLayerAttribute(GeoLayerID="polygon_copy",ExistingAttributeName="toRename",NewAttributeName="newName")
# Uncomment the next polygon to reproduce the expected results
# WriteGeoLayerToGeoJSON(GeoLayerID="polygon_copy",OutputFile="expected-results/test-RenameGeoLayerAttribute-Polygon-Memory-out")
# Write the in-memory polygon Geolayer to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="polygon_copy",OutputFile="results/test-RenameGeoLayerAttribute-Polygon-Memory-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-RenameGeoLayerAttribute-Polygon-Memory-out.geojson",InputFile2="results/test-RenameGeoLayerAttribute-Polygon-Memory-out.geojson",IfDifferent="Warn")