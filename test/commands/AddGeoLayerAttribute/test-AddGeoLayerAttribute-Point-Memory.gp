StartLog(LogFile="results/test-AddGeoLayerAttribute-Point-Memory.gp.log")
# Test removing an attribute from a GeoLayer
# - input GeoJSON is a single-feature point layer
# - the attribute is being added to an in-memory GeoLayer
# - test MUST write GeoLayer to Shapefile (NOT GeoJSON)
# --> by default, GeoJSON properties do not include empty attributes 
# --> only need to compare .dbf file (holds the data for the attribute table)
# Remove the results from the last run of this test, if exists.
RemoveFile(SourceFile="results/test-AddGeoLayerAttribute-Point-Memory-out.dbf", IfSourceFileNotFound="Ignore")
# Read the point GeoJSON (with GeoLayerID of "point") into the GeoProcessor
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/point.geojson", GeoLayerID="point")
# Copy the GeoLayer
CopyGeoLayer(GeoLayerID="point")
# Add the `addTest` attribute value to GeoLayer "polygon".
AddGeoLayerAttribute(GeoLayerID="point_copy", AttributeName="addTest", AttributeType="string")
# Uncomment the next 6 lines to reproduce the expected results
#WriteGeoLayerToShapefile(GeoLayerID="point_copy", OutputFile="expected-results/test-AddGeoLayerAttribute-Point-Memory-out")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Point-Memory-out.cpg", IfSourceFileNotFound="Ignore")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Point-Memory-out.prj", IfSourceFileNotFound="Ignore")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Point-Memory-out.qpj", IfSourceFileNotFound="Ignore")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Point-Memory-out.shp", IfSourceFileNotFound="Ignore")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Point-Memory-out.shx", IfSourceFileNotFound="Ignore")
# Write the in-memory point Geolayer to a GeoJSON file 
WriteGeoLayerToShapefile(GeoLayerID="point_copy", OutputFile="results/test-AddGeoLayerAttribute-Point-Memory-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-AddGeoLayerAttribute-Point-Memory-out.dbf", InputFile2="results/test-AddGeoLayerAttribute-Point-Memory-out.dbf",IfDifferent="Warn")