StartLog(LogFile="results/test-WriteGeoLayerToKML-Polygon.gp.log")
# Test writing a GeoLayer to a KML file
# - tests with a polygon layer (in WGS84|EPSG:4326)
# - all default optional parameters
#
# Remove the result polygon kml file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-WriteGeoLayerToKML-Polygon-out.kml",IfSourceFileNotFound="Ignore")
# Read the polygon GeoJSON (with GeoLayerID of "polygon") into the GeoProcessor 
ReadGeoLayerFromGeoJSON(InputFile="data/polygon.geojson",GeoLayerID="polygon")
# Uncomment below line to recreate expected results
#WriteGeoLayerToKML(GeoLayerID="polygon",OutputFile="expected-results/test-WriteGeoLayerToKML-Polygon-out")
# Write the polygon Geolayer to a KML file 
WriteGeoLayerToKML(GeoLayerID="polygon",OutputFile="results/test-WriteGeoLayerToKML-Polygon-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-WriteGeoLayerToKML-Polygon-out.kml",InputFile2="results/test-WriteGeoLayerToKML-Polygon-out.kml",IfDifferent="Warn")
