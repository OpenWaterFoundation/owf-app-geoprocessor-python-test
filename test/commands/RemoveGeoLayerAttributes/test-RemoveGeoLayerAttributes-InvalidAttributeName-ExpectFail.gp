StartLog(LogFile="results/test-RemoveGeoLayerAttributes-InvalidAttributeName-ExpectFail.gp.log")
# Test removing an attribute that does not exist from a GeoLayer
# - input GeoJSON is a single-feature line layer
# - the attribute is being removed from an in-memory GeoLayer
# - expect FAIL because the attribute being removed is not an existing attribute within the GeoLayer
#@expectedStatus Failure
# Read the line GeoJSON (with GeoLayerID of "line") into the GeoProcessor
ReadGeoLayerFromGeoJSON(InputFile="data/line.geojson",GeoLayerID="line")
# Copy the GeoLayer
CopyGeoLayer(GeoLayerID="line")
# Remove the `notValid` attribute value from the GeoLayer "line_copy"
RemoveGeoLayerAttributes(GeoLayerID="line_copy",AttributeNames="notValid")
# Free the "line" GeoLayer from the GeoProcessor.
FreeGeoLayer(GeoLayerID="line")
# Remove the date/line_copy.geojson file from the the testing environment.
RemoveFile(SourceFile="data/line_copy.geojson",IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="data/line_copy.geojson.tmp",IfSourceFileNotFound="Ignore")
