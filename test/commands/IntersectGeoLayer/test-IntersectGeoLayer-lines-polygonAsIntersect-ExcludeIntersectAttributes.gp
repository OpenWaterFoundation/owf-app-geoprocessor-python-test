StartLog(LogFile="results/test-IntersectGeoLayer-lines-polygonAsIntersect-ExcludeIntersectAttributes.gp.log")
# Test intersecting a lines geojson layer by a polygon geojson layer
# - some attributes from the intersect GeoLayer will be included
# - testing the ExcludeIntersectAttributes parameter
#
# Remove the result line geojson files from the last run of the test, if existing
RemoveFile(SourceFile="results/test-IntersectGeoLayer-lines-polygonAsIntersect-ExcludeIntersectAttributes-out.geojson",IfSourceFileNotFound="Ignore")
# Read the lines geojson (input GeoLayer)
ReadGeoLayerFromGeoJSON(InputFile="data/input_lines.geojson",GeoLayerID="input_lines")
# Read the polygon geojson (intersect GeoLayer)
ReadGeoLayerFromGeoJSON(InputFile="data/polygon-co-counties.geojson",GeoLayerID="intersect_polygons")
# Intersect the lines GeoLayer by the intersect polygons GeoLayer
IntersectGeoLayer(GeoLayerID="input_lines",IntersectGeoLayerID="intersect_polygons",ExcludeIntersectAttributes="l*,c*,state")
# Uncomment the next line to reproduce the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="input_lines_intersectedBy_intersect_polygons",OutputFile="expected-results/test-IntersectGeoLayer-lines-polygonAsIntersect-ExcludeIntersectAttributes-out")
# Write the output intersected line GeoLayer to GeoJSON format.
WriteGeoLayerToGeoJSON(GeoLayerID="input_lines_intersectedBy_intersect_polygons",OutputFile="results/test-IntersectGeoLayer-lines-polygonAsIntersect-ExcludeIntersectAttributes-out")
# Compare the results to the expected results
CompareFiles(InputFile1="results/test-IntersectGeoLayer-lines-polygonAsIntersect-ExcludeIntersectAttributes-out.geojson",InputFile2="expected-results/test-IntersectGeoLayer-lines-polygonAsIntersect-ExcludeIntersectAttributes-out.geojson",IfDifferent="Warn")
# Free all GeoLayers to avoid errors in suite tests.
FreeGeoLayers(GeoLayerIDs="*")
