StartLog(LogFile="results/test-FreeGeoLayer-ExpectFail.gp.log")
# Test removing a GeoLayer from the GeoProcessor
# 	- becuase the GeoLayer is "FREED" from the GeoProcessor, it cannot be written. This will cause the test to FAIL.
#	- the test will pass globally if it fails locally
#@expectedStatus Failure
# Read the line GeoJSON (with GeoLayerID of "line") into the GeoProcessor
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/line.geojson", GeoLayerID="line")
# Free the "line" GeoLayer from the GeoProcessor
FreeGeoLayer(GeoLayerID="line")
# Write the Geolayer to a GeoJSON file - should cause an error. FAIL locally.  
WriteGeoLayerToGeoJSON(GeoLayerID="line", OutputFile="results/test-FreeGeoLayer-out")