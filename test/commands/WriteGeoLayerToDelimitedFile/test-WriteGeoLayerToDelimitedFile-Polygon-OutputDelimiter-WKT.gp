StartLog(LogFile="results/test-WriteGeoLayerToDelimitedFile-Polygon-OutputDelimiter-WKT.gp.log")
# Test the functionality of the OutputGeometry parameter. 
# - testing with a polygon layer (in WGS84|EPSG:4326)
# - testing the OutputDelimiter parameter is functioning. 
# - testing that a semicolon is used as the delimiter rather than a comma
# Remove the result polygon geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-WriteGeoLayerToDelimitedFile-Polygon-OutputDelimiter-WKT-out.geojson",IfSourceFileNotFound="Ignore")
# Read the polygon GeoJSON (with GeoLayerID of "polygon") into the GeoProcessor 
ReadGeoLayerFromGeoJSON(InputFile="data/polygon.geojson",GeoLayerID="polygon")
# Uncomment below line to recreate expected results
#WriteGeoLayerToDelimitedFile(GeoLayerID="polygon",OutputFile="expected-results\test-WriteGeoLayerToDelimitedFile-Polygon-OutputDelimiter-WKT-out",OutputGeometryFormat="Wkt",OutputDelimiter="semicolon")
# Write the polygon Geolayer to a GeoJSON file 
WriteGeoLayerToDelimitedFile(GeoLayerID="polygon",OutputFile="results\test-WriteGeoLayerToDelimitedFile-Polygon-OutputDelimiter-WKT-out",OutputGeometryFormat="Wkt",OutputDelimiter="semicolon")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results\test-WriteGeoLayerToDelimitedFile-Polygon-OutputDelimiter-WKT-out.csv",InputFile2="results\test-WriteGeoLayerToDelimitedFile-Polygon-OutputDelimiter-WKT-out.csv",IfDifferent="Warn")
