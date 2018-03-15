StartLog(LogFile="results/test-WriteGeoLayerToKML-Line.gp.log")
# Test writing a GeoLayer to a KML file
# - tests with a line layer (in WGS84|EPSG:4326)
# - all default optional parameters
#
# Remove the result line kml file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-WriteGeoLayerToKML-Line-out.kml", IfSourceFileNotFound="Ignore")
# Read the line GeoJSON (with GeoLayerID of "line") into the GeoProcessor 
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/line.geojson", GeoLayerID="line")
# Uncomment below line to recreate expected results
#WriteGeoLayerToKML(GeoLayerID="line", OutputFile="expected-results/test-WriteGeoLayerToKML-Line-out")
# Write the line Geolayer to a KML file 
WriteGeoLayerToKML(GeoLayerID="line", OutputFile="results/test-WriteGeoLayerToKML-Line-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-WriteGeoLayerToKML-Line-out.kml", InputFile2="results/test-WriteGeoLayerToKML-Line-out.kml", IfDifferent="Warn")