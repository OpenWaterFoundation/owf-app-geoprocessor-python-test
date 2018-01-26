StartLog(LogFile="results/test-AddGeoLayerAttribute-Polygon-Memory.gp.log")
# Test removing an attribute from a GeoLayer
# - input GeoJSON is a single-feature polygon layer
# - the attribute is being added to an in-memory GeoLayer
# - test MUST write GeoLayer to Shapefile (NOT GeoJSON)
# --> by default, GeoJSON properties do not include empty attributes 
# --> only need to compare .dbf file (holds the data for the attribute table)
# Remove the results from the last run of this test, if exists.
RemoveFile(SourceFile="results/test-AddGeoLayerAttribute-Polygon-Memory-out.dbf", IfSourceFileNotFound="Ignore")
# Read the polygon GeoJSON (with GeoLayerID of "polygon") into the GeoProcessor
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/polygon.geojson", GeoLayerID="polygon")
# Copy the GeoLayer
CopyGeoLayer(GeoLayerID="polygon")
# Add the `addTest` attribute value to GeoLayer "polygon".
AddGeoLayerAttribute(GeoLayerID="polygon_copy", AttributeName="addTest", AttributeType="string")
# Uncomment the next 6 lines to reproduce the expected results
WriteGeoLayerToShapefile(GeoLayerID="polygon_copy", OutputFile="expected-results/test-AddGeoLayerAttribute-Polygon-Memory-out")
RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Polygon-Memory-out.cpg", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Polygon-Memory-out.prj", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Polygon-Memory-out.qpj", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Polygon-Memory-out.shp", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Polygon-Memory-out.shx", IfSourceFileNotFound="Ignore")
# Write the in-memory polygon Geolayer to a GeoJSON file 
WriteGeoLayerToShapefile(GeoLayerID="polygon_copy", OutputFile="results/test-AddGeoLayerAttribute-Polygon-Memory-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-AddGeoLayerAttribute-Polygon-Memory-out.dbf", InputFile2="results/test-AddGeoLayerAttribute-Polygon-Memory-out.dbf",IfDifferent="Warn")