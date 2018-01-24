StartLog(LogFile="results/test-RenameGeoLayerAttribute-Point-OnDisk.gp.log")
# Test renaming a GeoLayer's attribute
# - input GeoJSON is a single-feature point layer
# - the attribute is being renamed from a GeoLayer written on disk
# Remove the results from the last run of this test, if exists.
RemoveFile(SourceFile="results/test-RenameGeoLayerAttribute-Point-OnDisk-out.geojson", IfSourceFileNotFound="Ignore")
# Make a copy of the point GeoJSON file. 
CopyFile(SourceFile="data/point.geojson", DestinationFile="data/point_copy.geojson")
# Read the copied point GeoJSON file into the GeoProcessor (with GeoLayerID of "point").
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/point_copy.geojson", GeoLayerID="point")
# Rename the `toRename` attribute value from GeoLayer "point" to `newName`.
RenameGeoLayerAttribute(GeoLayerID="point", ExistingAttributeName="toRename", NewAttributeName="newName")
# Uncomment the next point to reproduce the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="point", OutputFile="expected-results/test-RenameGeoLayerAttribute-Point-OnDisk-out")
# Write the point Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="point", OutputFile="results/test-RenameGeoLayerAttribute-Point-OnDisk-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-RenameGeoLayerAttribute-Point-OnDisk-out.geojson", InputFile2="results/test-RenameGeoLayerAttribute-Point-OnDisk-out.geojson",IfDifferent="Warn")
# Free the "point" GeoLayer from the GeoProcessor.
FreeGeoLayer(GeoLayerID="point")
# Remove the date/point_copy.geojson file from the the testing environment.
RemoveFile(SourceFile="data/point_copy.geojson", IfSourceFileNotFound="Ignore")