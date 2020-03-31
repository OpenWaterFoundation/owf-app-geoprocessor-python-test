StartLog(LogFile="results/test-IntersectGeoLayer-points-pointsAsIntersect.gp.log")
# Test intersecting a points geojson layer by a point geojson layer
# - all attributes from the intersect GeoLayer will be included
#
# Remove the result points geojson files from the last run of the test, if existing
RemoveFile(SourceFile="results/test-IntersectGeoLayer-points-pointsAsIntersect-out.geojson",IfSourceFileNotFound="Ignore")
# Read the points geojson (input GeoLayer)
ReadGeoLayerFromGeoJSON(InputFile="data/input_points.geojson",GeoLayerID="input_points")
# Read the point geojson (intersect GeoLayer)
ReadGeoLayerFromGeoJSON(InputFile="data/intersect_points.geojson",GeoLayerID="intersect_points")
# Intersect the points GeoLayer by the intersect points GeoLayer
IntersectGeoLayer(GeoLayerID="input_points",IntersectGeoLayerID="intersect_points")
# Uncomment the next line to reproduce the expected results
# WriteGeoLayerToGeoJSON(GeoLayerID="input_points_intersectedBy_intersect_points",OutputFile="expected-results/test-IntersectGeoLayer-points-pointsAsIntersect-out.geojson")
# Write the output intersected points GeoLayer to GeoJSON format.
WriteGeoLayerToGeoJSON(GeoLayerID="input_points_intersectedBy_intersect_points",OutputFile="results/test-IntersectGeoLayer-points-pointsAsIntersect-out.geojson")
# Compare the results to the expected results
CompareFiles(InputFile1="results/test-IntersectGeoLayer-points-pointsAsIntersect-out.geojson",InputFile2="expected-results/test-IntersectGeoLayer-points-pointsAsIntersect-out.geojson",IfDifferent="Warn")
# Free all GeoLayers to avoid errors in suite tests.
FreeGeoLayers(GeoLayerIDs="*")