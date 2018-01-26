StartLog(LogFile="results/test-MergeGeoLayers-Lines-Point-ExpectFail.gp.log")
# Test merging GeoLayers of different Geometry
# 	- the first input GeoLayer is a multi-feature LINE GeoJSON file.
#	- the second input GeoLayer is a single-feature POINT GeoJSON file.
# 	- the test should FAIL becasue GeoLayers of difference geometries cannot merged
#	- a local FAIL is a global PASS
# Read both GeoJSONs into the GeoProcessor 
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/point.geojson", GeoLayerID="point")
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/lines_StatName_StateName.geojson", GeoLayerID="lines")
# Merge the two GeoLayers. 
MergeGeoLayers(GeoLayerIDs="point, lines", OutputGeoLayerID="merged")