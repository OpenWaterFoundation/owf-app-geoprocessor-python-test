StartLog(LogFile="results/test-AddGeoLayerAttribute-Point-OnDisk.gp.log")
# Test adding an attribute to a GeoLayer
# - input GeoJSON is a single-feature point layer
# - the attribute is being removed from a GeoLayer written on disk
# - test MUST write GeoLayer to Shapefile (NOT GeoJSON)
# --> by default, GeoJSON properties do not include empty attributes 
# --> only need to compare .dbf file (holds the data for the attribute table)
# Remove the results from the last run of this test, if exists.
RemoveFile(SourceFile="results/test-AddGeoLayerAttribute-Point-OnDisk-out.dbf", IfSourceFileNotFound="Ignore")
# Make a copy of the point GeoJSON file. 
CopyFile(SourceFile="data/point.geojson", DestinationFile="data/point_copy.geojson")
# Read the copied point GeoJSON file into the GeoProcessor (with GeoLayerID of "point").
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/point_copy.geojson", GeoLayerID="point")
# Add the `addTest` attribute value to GeoLayer "point".
AddGeoLayerAttribute(GeoLayerID="point", AttributeName="addTest", AttributeType="string")
# Uncomment the next 6 lines to reproduce the expected results
#WriteGeoLayerToShapefile(GeoLayerID="point", OutputFile="expected-results/test-AddGeoLayerAttribute-Point-OnDisk-out")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Point-OnDisk-out.cpg", IfSourceFileNotFound="Ignore")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Point-OnDisk-out.prj", IfSourceFileNotFound="Ignore")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Point-OnDisk-out.qpj", IfSourceFileNotFound="Ignore")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Point-OnDisk-out.shp", IfSourceFileNotFound="Ignore")
#RemoveFile(SourceFile="expected-results/test-AddGeoLayerAttribute-Point-OnDisk-out.shx", IfSourceFileNotFound="Ignore")
# Write the point Geolayer to a GeoJSON file 
WriteGeoLayerToShapefile(GeoLayerID="point", OutputFile="results/test-AddGeoLayerAttribute-Point-OnDisk-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-AddGeoLayerAttribute-Point-OnDisk-out.dbf", InputFile2="results/test-AddGeoLayerAttribute-Point-OnDisk-out.dbf",IfDifferent="Warn")
# Free the "point" GeoLayer from the GeoProcessor.
FreeGeoLayer(GeoLayerID="point")
# Remove the date/point_copy.geojson file from the the testing environment.
RemoveFile(SourceFile="data/point_copy.geojson", IfSourceFileNotFound="Ignore")