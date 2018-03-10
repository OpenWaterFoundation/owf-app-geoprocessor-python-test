StartLog(LogFile="results/test-IntersectGeoLayer-polygons-linesAsIntersect.gp.log")
# Test intersecting a polygon geojson layer by a points geojson layer
# - should fail because the intersecting shape cannot be drawn as a polygon
# @expectedStatus Failure
#
#
# Read the polygon geojson (input GeoLayer)
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/input_polygons.geojson", GeoLayerID = "input_polygons")
# Read the lines geojson (intersect GeoLayer)
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/intersect_lines.geojson", GeoLayerID = "intersect_lines")
# Intersect the lines GeoLayer by the intersect polygons GeoLayer - should fail
IntersectGeoLayer(GeoLayerID="input_polygons", IntersectGeoLayerID="intersect_lines")