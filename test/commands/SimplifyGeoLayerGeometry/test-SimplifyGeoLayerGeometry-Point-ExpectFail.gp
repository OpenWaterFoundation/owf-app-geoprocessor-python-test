StartLog(LogFile="results/test-SimplifyGeoLayerGeometry-Point-ExpectFail.gp.log")
# Test simplifying the geometry of a GeoLayer 
# - input data is a GeoJSON Point layer
# - expect FAILURE because GeoLayers with `POINT` geometry cannot be processed with this command 
#@expectedStatus Failure
# Read the point GeoJSON (with GeoLayerID of "point") into the GeoProcessor 
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/point.geojson", GeoLayerID="point")
# Simplify the GeoLayer to a tolerance level of 50. This should cause a FAILURE.
SimplifyGeoLayerGeometry(GeoLayerID = "point", Tolerance="50")