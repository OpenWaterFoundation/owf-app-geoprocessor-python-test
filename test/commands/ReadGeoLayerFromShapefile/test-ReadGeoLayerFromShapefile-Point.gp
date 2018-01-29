StartLog(LogFile="results/test-ReadGeoLayerFromShapefile-Point.gp.log")
# Test reading a GeoLayer from a Shapefile 
# - Shapefile is a point layer
# Remove the result point GeoJSON from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayerFromShapefile-Point-out.geojson", IfSourceFileNotFound="Ignore")
# Read the point Shapefile (with GeoLayerID of "point") into the GeoProcessor 
ReadGeoLayerFromShapefile(SpatialDataFile="data/point.shp", GeoLayerID="point")
# Uncomment the line below to recreate the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="point", OutputFile="expected-results/test-ReadGeoLayerFromShapefile-Point-out")
# Write the point Geolayer to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="point", OutputFile="results/test-ReadGeoLayerFromShapefile-Point-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-ReadGeoLayerFromShapefile-Point-out.geojson", InputFile2="results/test-ReadGeoLayerFromShapefile-Point-out.geojson", IfDifferent="Warn")