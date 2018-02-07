StartLog(LogFile="results/test-CopyGeoLayer-Points-BothAttributeParameters-ExpectFail.gp.log")
# Test copying a GeoLayer 
# - data is a GeoJSON points layer
# - test that the ExcludeAttributes parameter and the IncludeAttributes parameter cannot both be configured 
# - expect FAILURE
#@expectedStatus Failure
# Read the POINTS GeoJSON (with GeoLayerID of "points") into the GeoProcessor 
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/points.geojson", GeoLayerID="points")
# Copy the GeoLayer. Attempt to use both the ExcludeAttributes and the IncludeAttributes parameters. This should raise a FAILURE.
CopyGeoLayer(GeoLayerID="points", ExcludeAttributes="id", IncludeAttributes="Keep_Field")