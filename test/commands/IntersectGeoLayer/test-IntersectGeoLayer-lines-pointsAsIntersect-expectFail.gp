StartLog(LogFile="results/test-IntersectGeoLayer-lines-pointsAsIntersect-expectFail.gp.log")
# Test intersecting a line geojson layer by a points geojson layer
# - should fail because the intersecting shape cannot be drawn as a line
# @expectedStatus Failure
#
# Read the line geojson (input GeoLayer)
ReadGeoLayerFromGeoJSON(InputFile="data/input_lines.geojson",GeoLayerID="input_lines")
# Read the points geojson (intersect GeoLayer)
ReadGeoLayerFromGeoJSON(InputFile="data/intersect_points.geojson",GeoLayerID="intersect_points")
# Intersect the lines GeoLayer by the intersect points GeoLayer - should fail
IntersectGeoLayer(GeoLayerID="input_lines",IntersectGeoLayerID="intersect_points")
