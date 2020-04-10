StartLog(LogFile="results/test-ReadGeoLayerFromGeoJSON-Polygon.gp.log")
# Test reading a GeoLayer from a GeoJSON 
# - GeoJSON is a polygon layer
# Remove the result polygon geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayerFromGeoJSON-Polygon-out.geojson", IfSourceFileNotFound="Ignore")
# Read the polygon GeoJSON (with GeoLayerID of "polygon") into the GeoProcessor 
ReadGeoLayerFromGeoJSON(InputFile="data/polygon.geojson",GeoLayerID="polygon")
# Uncomment the line below to recreate the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="polygon",OutputFile="expected-results/test-ReadGeoLayerFromGeoJSON-Polygon-out.geojson")
# Write the polygon Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="polygon",OutputFile="results/test-ReadGeoLayerFromGeoJSON-Polygon-out.geojson")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-ReadGeoLayerFromGeoJSON-Polygon-out.geojson",InputFile2="results/test-ReadGeoLayerFromGeoJSON-Polygon-out.geojson",IfDifferent="Warn")
