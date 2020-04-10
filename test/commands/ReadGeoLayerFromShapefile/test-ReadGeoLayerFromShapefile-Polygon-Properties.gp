StartLog(LogFile="results/test-ReadGeoLayerFromShapefile-Polygon-Properties.gp.log")
# Test reading a GeoLayer from a Shapefile
# - Shapefile is a polygon layer
# - set Properties during read and confirm that the properties are set
# - also test ${Property}
# Remove the result polygon GeoJSON from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayerFromShapefile-Polygon-Properties-out.geojson",IfSourceFileNotFound="Ignore")
# Read the polygon Shapefile (with GeoLayerID of "polygon") into the GeoProcessor
ReadGeoLayerFromShapefile(InputFile="data/polygon.shp",GeoLayerID="polygon",Properties="i:i,s:'some string',propTest:${testString}")
# Uncomment the line below to recreate the expected results
# WriteGeoLayerPropertiesToFile(GeoLayerID="polygon",OutputFile="expected-results/test-ReadGeoLayerFromShapefile-Polygon-Properties-out.txt",FileFormat="NameValue")
# Write the polygon Geolayer to a GeoJSON file
WriteGeoLayerPropertiesToFile(GeoLayerID="polygon",OutputFile="results/test-ReadGeoLayerFromShapefile-Polygon-Properties-out.txt",FileFormat="NameValue")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-ReadGeoLayerFromShapefile-Polygon-Properties-out.txt",InputFile2="results/test-ReadGeoLayerFromShapefile-Polygon-Properties-out.txt",IfDifferent="Warn")
