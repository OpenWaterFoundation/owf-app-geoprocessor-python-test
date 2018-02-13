StartLog(LogFile="results/test-WriteGeoLayerToDelimitedFile-Line-OutputGeometry-WKT.gp.log")
# Test the functionality of the OutputGeometry parameter. 
# - testing with a line layer (in WGS84|EPSG:4326)
# Remove the result line geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-WriteGeoLayerToDelimitedFile-Line-OutputGeometry-WKT-out.geojson", IfSourceFileNotFound="Ignore")
# Read the line GeoJSON (with GeoLayerID of "line") into the GeoProcessor 
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/line.geojson", GeoLayerID="line")
# Uncomment below line to recreate expected results
#WriteGeoLayerToDelimitedFile(GeoLayerID="line", OutputFile="expected-results\test-WriteGeoLayerToDelimitedFile-Line-OutputGeometry-WKT-out", OutputGeometryFormat="Wkt")
# Write the line Geolayer to a GeoJSON file 
WriteGeoLayerToDelimitedFile(GeoLayerID="line", OutputFile="results\test-WriteGeoLayerToDelimitedFile-Line-OutputGeometry-WKT-out", OutputGeometryFormat="Wkt")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-WriteGeoLayerToDelimitedFile-Line-OutputGeometry-WKT-out.csv", InputFile2="results/test-WriteGeoLayerToDelimitedFile-Line-OutputGeometry-WKT-out.csv", IfDifferent="Warn")