StartLog(LogFile="results/test-IntersectGeoLayer-lines-polygonAsIntersect-outputGeoLayerID.gp.log")
# Test intersecting a lines geojson layer by a polygon geojson layer
# - all attributes from the intersect GeoLayer will be included
# - test that the OutputGeoLayerID functions as desired
#
# Remove the result line geojson files from the last run of the test, if existing
RemoveFile(SourceFile="results/test-IntersectGeoLayer-lines-polygonAsIntersect-outputGeoLayerID-out.geojson",IfSourceFileNotFound="Ignore")
# Read the lines geojson (input GeoLayer)
ReadGeoLayerFromGeoJSON(InputFile="data/input_lines.geojson",GeoLayerID="input_lines")
# Read the polygon geojson (intersect GeoLayer)
ReadGeoLayerFromGeoJSON(InputFile="data/polygon-co-counties.geojson",GeoLayerID="intersect_polygons")
# Intersect the lines GeoLayer by the intersect polygons GeoLayer
IntersectGeoLayer(GeoLayerID="input_lines",IntersectGeoLayerID="intersect_polygons",OutputGeoLayerID="output")
# Uncomment the next line to reproduce the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="output",OutputFile="expected-results/test-IntersectGeoLayer-lines-polygonAsIntersect-outputGeoLayerID-out")
# Write the output intersected line GeoLayer to GeoJSON format.
WriteGeoLayerToGeoJSON(GeoLayerID="output",OutputFile="results/test-IntersectGeoLayer-lines-polygonAsIntersect-outputGeoLayerID-out")
# Compare the results to the expected results
CompareFiles(InputFile1="results/test-IntersectGeoLayer-lines-polygonAsIntersect-outputGeoLayerID-out.geojson",InputFile2="expected-results/test-IntersectGeoLayer-lines-polygonAsIntersect-outputGeoLayerID-out.geojson",IfDifferent="Warn")
# Free all GeoLayers to avoid errors in suite tests.
FreeGeoLayers(GeoLayerIDs="*")
