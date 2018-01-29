StartLog(LogFile="results/test-AddGeoLayerAttribute-Line-Memory.gp.log")
# Test removing an attribute from a GeoLayer
# - input GeoJSON is a single-feature line layer
# - the attribute is being added to an in-memory GeoLayer
# - test MUST write GeoLayer to Shapefile (NOT GeoJSON)
# --> by default, GeoJSON properties do not include empty attributes 
# --> only need to compare .dbf file (holds the data for the attribute table)
# Remove the results from the last run of this test, if exists.
RemoveFile(SourceFile="results/test-AddGeoLayerAttribute-Line-Memory-out.dbf", IfSourceFileNotFound="Ignore")
# Read the line GeoJSON (with GeoLayerID of "line") into the GeoProcessor
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/line.geojson", GeoLayerID="line")
# Copy the GeoLayer
CopyGeoLayer(GeoLayerID="line")
# Add the `addTest` attribute value to GeoLayer "polygon".
AddGeoLayerAttribute(GeoLayerID="line_copy", AttributeName="addTest", AttributeType="string")
# Uncomment the next 6 lines to reproduce the expected results
#WriteGeoLayerToShapefile(GeoLayerID="line_copy", OutputFile="expected-results/test-AddGeoLayerAttribute-Line-Memory-out")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Line-Memory-out.cpg", IfSourceFileNotFound="Ignore")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Line-Memory-out.prj", IfSourceFileNotFound="Ignore")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Line-Memory-out.qpj", IfSourceFileNotFound="Ignore")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Line-Memory-out.shp", IfSourceFileNotFound="Ignore")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Line-Memory-out.shx", IfSourceFileNotFound="Ignore")
# Write the in-memory line Geolayer to a GeoJSON file 
WriteGeoLayerToShapefile(GeoLayerID="line_copy", OutputFile="results/test-AddGeoLayerAttribute-Line-Memory-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-AddGeoLayerAttribute-Line-Memory-out.dbf", InputFile2="results/test-AddGeoLayerAttribute-Line-Memory-out.dbf",IfDifferent="Warn")