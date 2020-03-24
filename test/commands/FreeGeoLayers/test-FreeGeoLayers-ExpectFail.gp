StartLog(LogFile="results/test-FreeGeoLayers-ExpectFail.gp.log")
# Test removing a GeoLayer from the GeoProcessor
# - because the GeoLayer is "FREED" from the GeoProcessor, it cannot be written. This will cause the test to FAIL.
# - the test will pass globally if it fails locally
#@expectedStatus Failure
# Read the line GeoJSON (with GeoLayerID of "line") into the GeoProcessor
ReadGeoLayerFromGeoJSON(InputFile="data/line.geojson",GeoLayerID="line")
# Free the "line" GeoLayer from the GeoProcessor
FreeGeoLayers(GeoLayerIDs="line")
# Write the Geolayer to a GeoJSON file - should cause an error. FAIL locally.  
WriteGeoLayerToGeoJSON(GeoLayerID="line",OutputFile="results/test-FreeGeoLayers-out")
