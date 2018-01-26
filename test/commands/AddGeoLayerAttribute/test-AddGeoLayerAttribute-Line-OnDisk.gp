StartLog(LogFile="results/test-AddGeoLayerAttribute-Line-OnDisk.gp.log")
# Test adding an attribute to a GeoLayer
# - input GeoJSON is a single-feature line layer
# - the attribute is being removed from a GeoLayer written on disk
# - test MUST write GeoLayer to Shapefile (NOT GeoJSON)
# --> by default, GeoJSON properties do not include empty attributes 
# --> only need to compare .dbf file (holds the data for the attribute table)
# Remove the results from the last run of this test, if exists.
RemoveFile(SourceFile="results/test-AddGeoLayerAttribute-Line-OnDisk-out.dbf", IfSourceFileNotFound="Ignore")
# Make a copy of the line GeoJSON file. 
CopyFile(SourceFile="data/line.geojson", DestinationFile="data/line_copy.geojson")
# Read the copied line GeoJSON file into the GeoProcessor (with GeoLayerID of "line").
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/line_copy.geojson", GeoLayerID="line")
# Add the `addTest` attribute value to GeoLayer "line".
AddGeoLayerAttribute(GeoLayerID="line", AttributeName="addTest", AttributeType="string")
# Uncomment the next 6 lines to reproduce the expected results
#WriteGeoLayerToShapefile(GeoLayerID="line", OutputFile="expected-results/test-AddGeoLayerAttribute-Line-OnDisk-out")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Line-OnDisk-out.cpg", IfSourceFileNotFound="Ignore")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Line-OnDisk-out.prj", IfSourceFileNotFound="Ignore")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Line-OnDisk-out.qpj", IfSourceFileNotFound="Ignore")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Line-OnDisk-out.shp", IfSourceFileNotFound="Ignore")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Line-OnDisk-out.shx", IfSourceFileNotFound="Ignore")
# Write the line Geolayer to a GeoJSON file 
WriteGeoLayerToShapefile(GeoLayerID="line", OutputFile="results/test-AddGeoLayerAttribute-Line-OnDisk-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-AddGeoLayerAttribute-Line-OnDisk-out.dbf", InputFile2="results/test-AddGeoLayerAttribute-Line-OnDisk-out.dbf",IfDifferent="Warn")
# Free the "line" GeoLayer from the GeoProcessor.
FreeGeoLayer(GeoLayerID="line")
# Remove the date/line_copy.geojson file from the the testing environment.
RemoveFile(SourceFile="data/line_copy.geojson", IfSourceFileNotFound="Ignore")