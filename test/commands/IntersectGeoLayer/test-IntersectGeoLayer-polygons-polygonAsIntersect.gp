StartLog(LogFile="results/test-IntersectGeoLayer-polygons-polygonAsIntersect.gp.log")
# Test intersecting a polygons geojson layer by a polygon geojson layer
# - all attributes from the intersect GeoLayer will be included
#
# Remove the result polygons geojson files from the last run of the test, if existing
RemoveFile(SourceFile="results/test-IntersectGeoLayer-polygons-polygonAsIntersect-out.geojson",IfSourceFileNotFound="Ignore")
# Read the polygons geojson (input GeoLayer)
ReadGeoLayerFromGeoJSON(InputFile="data/input_polygons.geojson",GeoLayerID="input_polygons")
# Read the polygon geojson (intersect GeoLayer)
ReadGeoLayerFromGeoJSON(InputFile="data/polygon-co-counties.geojson",GeoLayerID="intersect_polygons")
# Intersect the polygons GeoLayer by the intersect polygons GeoLayer
IntersectGeoLayer(GeoLayerID="input_polygons",IntersectGeoLayerID="intersect_polygons")
# Uncomment the next line to reproduce the expected results
# WriteGeoLayerToGeoJSON(GeoLayerID="input_polygons_intersectedBy_intersect_polygons",OutputFile="expected-results/test-IntersectGeoLayer-polygons-polygonAsIntersect-out.geojson")
# Write the output intersected polygons GeoLayer to GeoJSON format.
WriteGeoLayerToGeoJSON(GeoLayerID="input_polygons_intersectedBy_intersect_polygons",OutputFile="results/test-IntersectGeoLayer-polygons-polygonAsIntersect-out.geojson")
# Compare the results to the expected results
CompareFiles(InputFile1="results/test-IntersectGeoLayer-polygons-polygonAsIntersect-out.geojson",InputFile2="expected-results/test-IntersectGeoLayer-polygons-polygonAsIntersect-out.geojson",IfDifferent="Warn")
# Free all GeoLayers to avoid errors in suite tests.
FreeGeoLayers(GeoLayerIDs="*")