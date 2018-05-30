StartLog(LogFile="results/test-ReadGeoLayerFromShapefile-Polygon.gp.log")
# Test reading a GeoLayer from a Shapefile 
# - Shapefile is a polygon layer
# Remove the result polygon GeoJSON from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayerFromShapefile-Polygon-out.geojson", IfSourceFileNotFound="Ignore")
# Read the polygon Shapefile (with GeoLayerID of "polygon") into the GeoProcessor 
ReadGeoLayerFromShapefile(SpatialDataFile="data/polygon.shp", GeoLayerID="polygon")
# Uncomment the line below to recreate the expected results
WriteGeoLayerToGeoJSON(GeoLayerID="polygon", OutputFile="expected-results/test-ReadGeoLayerFromShapefile-Polygon-out")
# Write the polygon Geolayer to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="polygon", OutputFile="results/test-ReadGeoLayerFromShapefile-Polygon-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-ReadGeoLayerFromShapefile-Polygon-out.geojson", InputFile2="results/test-ReadGeoLayerFromShapefile-Polygon-out.geojson", IfDifferent="Warn")