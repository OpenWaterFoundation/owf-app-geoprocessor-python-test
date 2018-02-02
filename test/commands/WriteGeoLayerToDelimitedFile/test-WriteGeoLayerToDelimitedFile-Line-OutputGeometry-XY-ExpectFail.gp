StartLog(LogFile="results/test-WriteGeoLayerToDelimitedFile-Line-OutputGeometry-XY-ExpectFail.gp.log")
# Test the functionality of the OutputGeometry parameter. 
# - testing with a line layer (in WGS84|EPSG:4326)
# - testing that a FAILURE is logged when attempting to write a GeoLayer with "LINE" features into output XY format
# - Expecting FAILURE
#@expectedStatus Failure
# Read the line GeoJSON (with GeoLayerID of "line") into the GeoProcessor 
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/line.geojson", GeoLayerID="line")
# Write the line Geolayer to a GeoJSON file 
WriteGeoLayerToDelimitedFile(GeoLayerID="line", OutputFile="results/test-WriteGeoLayerToDelimitedFile-Line-OutputGeometry-XY-ExpectFail-out")