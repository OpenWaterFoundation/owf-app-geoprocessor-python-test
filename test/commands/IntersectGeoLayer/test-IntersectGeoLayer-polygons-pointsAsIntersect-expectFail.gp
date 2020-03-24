StartLog(LogFile="results/test-IntersectGeoLayer-polygons-pointsAsIntersect-expectFail.gp.log")
# Test intersecting a polygon geojson layer by a points geojson layer
# - should fail because the intersecting shape cannot be drawn as a polygon
# @expectedStatus Failure
#
#
# Read the polygon geojson (input GeoLayer)
ReadGeoLayerFromGeoJSON(InputFile="data/input_polygons.geojson",GeoLayerID="input_polygons")
# Read the points geojson (intersect GeoLayer)
ReadGeoLayerFromGeoJSON(InputFile="data/intersect_points.geojson",GeoLayerID="intersect_points")
# Intersect the polygons GeoLayer by the intersect points GeoLayer - should fail
IntersectGeoLayer(GeoLayerID="input_polygons",IntersectGeoLayerID="intersect_points")
