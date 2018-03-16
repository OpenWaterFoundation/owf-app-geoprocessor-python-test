StartLog(LogFile="results/test-IntersectGeoLayer-points-linesAsIntersect.gp.log")
# Test intersecting a points geojson layer by a line geojson layer
# - all attributes from the intersect GeoLayer will be included
#
# Remove the result points geojson files from the last run of the test, if existing
RemoveFile(SourceFile="results/test-IntersectGeoLayer-points-linesAsIntersect-out.geojson", IfSourceFileNotFound="Ignore")
# Read the points geojson (input GeoLayer)
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/input_points.geojson", GeoLayerID = "input_points")
# Read the line geojson (intersect GeoLayer)
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/intersect_lines.geojson", GeoLayerID = "intersect_lines")
# Intersect the lines GeoLayer by the intersect lines GeoLayer
IntersectGeoLayer(GeoLayerID="input_points", IntersectGeoLayerID="intersect_lines")
# Uncomment the next line to reproduce the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="input_points_intersectedBy_intersect_lines", OutputFile="expected-results/test-IntersectGeoLayer-points-linesAsIntersect-out")
# Write the output intersected line GeoLayer to GeoJSON format.
WriteGeoLayerToGeoJSON(GeoLayerID="input_points_intersectedBy_intersect_lines", OutputFile="results/test-IntersectGeoLayer-points-linesAsIntersect-out")
# Compare the results to the expected results
CompareFiles(InputFile1="results/test-IntersectGeoLayer-points-linesAsIntersect-out.geojson", InputFile2="expected-results/test-IntersectGeoLayer-points-linesAsIntersect-out.geojson", IfDifferent="Warn")
# Free all GeoLayers to avoid errors in suite tests.
FreeGeoLayers(GeoLayerIDs="*")