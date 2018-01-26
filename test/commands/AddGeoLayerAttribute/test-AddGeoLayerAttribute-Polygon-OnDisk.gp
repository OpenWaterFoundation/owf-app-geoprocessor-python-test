StartLog(LogFile="results/test-AddGeoLayerAttribute-Polygon-OnDisk.gp.log")
# Test adding an attribute to a GeoLayer
# - input GeoJSON is a single-feature polygon layer
# - the attribute is being removed from a GeoLayer written on disk
# - test MUST write GeoLayer to Shapefile (NOT GeoJSON)
# --> by default, GeoJSON properties do not include empty attributes 
# --> only need to compare .dbf file (holds the data for the attribute table)
# Remove the results from the last run of this test, if exists.
RemoveFile(SourceFile="results/test-AddGeoLayerAttribute-Polygon-OnDisk-out.dbf", IfSourceFileNotFound="Ignore")
# Make a copy of the polygon GeoJSON file. 
CopyFile(SourceFile="data/polygon.geojson", DestinationFile="data/polygon_copy.geojson")
# Read the copied polygon GeoJSON file into the GeoProcessor (with GeoLayerID of "polygon").
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/polygon_copy.geojson", GeoLayerID="polygon")
# Add the `addTest` attribute value to GeoLayer "polygon".
AddGeoLayerAttribute(GeoLayerID="polygon", AttributeName="addTest", AttributeType="string")
# Uncomment the next 6 lines to reproduce the expected results
#WriteGeoLayerToShapefile(GeoLayerID="polygon", OutputFile="expected-results/test-AddGeoLayerAttribute-Polygon-OnDisk-out")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Polygon-OnDisk-out.cpg", IfSourceFileNotFound="Ignore")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Polygon-OnDisk-out.prj", IfSourceFileNotFound="Ignore")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Polygon-OnDisk-out.qpj", IfSourceFileNotFound="Ignore")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Polygon-OnDisk-out.shp", IfSourceFileNotFound="Ignore")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Polygon-OnDisk-out.shx", IfSourceFileNotFound="Ignore")
# Write the polygon Geolayer to a GeoJSON file 
WriteGeoLayerToShapefile(GeoLayerID="polygon", OutputFile="results/test-AddGeoLayerAttribute-Polygon-OnDisk-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-AddGeoLayerAttribute-Polygon-OnDisk-out.dbf", InputFile2="results/test-AddGeoLayerAttribute-Polygon-OnDisk-out.dbf",IfDifferent="Warn")
# Free the "polygon" GeoLayer from the GeoProcessor.
FreeGeoLayer(GeoLayerID="polygon")
# Remove the date/polygon_copy.geojson file from the the testing environment.
RemoveFile(SourceFile="data/polygon_copy.geojson", IfSourceFileNotFound="Ignore")