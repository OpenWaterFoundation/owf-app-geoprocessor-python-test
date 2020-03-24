StartLog(LogFile="results/test-RemoveGeoLayerAttributes-InvalidGeoLayer-ExpectFail.gp.log")
# Test removing an attribute from a GeoLayer that does not exist 
# - input GeoJSON is a single-feature line layer
# - expect FAIL because the GeoLayer does not exist
#@expectedStatus Failure
# Remove the `notValid` attribute value from a GeoLayer that does not exist
RemoveGeoLayerAttributes(GeoLayerID="line",AttributeNames="notValid")
