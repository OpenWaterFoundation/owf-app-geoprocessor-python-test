StartLog(LogFile="results/test-RenameGeoLayerAttribute-Point-Memory.gp.log")
# Test removing an attribute from a GeoLayer
# - input GeoJSON is a single-feature point layer
# - the attribute is being renamed from an in-memory GeoLayer
# Remove the results from the last run of this test, if exists.
RemoveFile(SourceFile="results/test-RenameGeoLayerAttribute-Point-Memory-out.geojson",IfSourceFileNotFound="Ignore")
# Read the point GeoJSON (with GeoLayerID of "point") into the GeoProcessor
ReadGeoLayerFromGeoJSON(InputFile="data/point.geojson",GeoLayerID="point")
# Copy the GeoLayer
CopyGeoLayer(GeoLayerID="point")
# Rename the `toRename` attribute value from GeoLayer "point" to `newName`.
RenameGeoLayerAttribute(GeoLayerID="point_copy",ExistingAttributeName="toRename",NewAttributeName="newName")
# Uncomment the next point to reproduce the expected results
# WriteGeoLayerToGeoJSON(GeoLayerID="point_copy",OutputFile="expected-results/test-RenameGeoLayerAttribute-Point-Memory-out")
# Write the in-memory point Geolayer to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="point_copy",OutputFile="results/test-RenameGeoLayerAttribute-Point-Memory-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-RenameGeoLayerAttribute-Point-Memory-out.geojson",InputFile2="results/test-RenameGeoLayerAttribute-Point-Memory-out.geojson",IfDifferent="Warn")