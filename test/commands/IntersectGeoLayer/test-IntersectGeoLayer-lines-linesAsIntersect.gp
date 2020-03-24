StartLog(LogFile="results/test-IntersectGeoLayer-lines-linesAsIntersect.gp.log")
# Test intersecting a lines geojson layer by a line geojson layer
# - all attributes from the intersect GeoLayer will be included
#
# Remove the result line geojson files from the last run of the test, if existing
RemoveFile(SourceFile="results/test-IntersectGeoLayer-lines-linesAsIntersect-out.geojson",IfSourceFileNotFound="Ignore")
# Read the lines geojson (input GeoLayer)
ReadGeoLayerFromGeoJSON(InputFile="data/input_lines.geojson",GeoLayerID="input_lines")
# Read the line geojson (intersect GeoLayer)
ReadGeoLayerFromGeoJSON(InputFile="data/intersect_lines.geojson",GeoLayerID="intersect_lines")
# Intersect the lines GeoLayer by the intersect lines GeoLayer
IntersectGeoLayer(GeoLayerID="input_lines",IntersectGeoLayerID="intersect_lines")
# Uncomment the next line to reproduce the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="input_lines_intersectedBy_intersect_lines",OutputFile="expected-results/test-IntersectGeoLayer-lines-linesAsIntersect-out")
# Write the output intersected line GeoLayer to GeoJSON format.
WriteGeoLayerToGeoJSON(GeoLayerID="input_lines_intersectedBy_intersect_lines",OutputFile="results/test-IntersectGeoLayer-lines-linesAsIntersect-out")
# Compare the results to the expected results
CompareFiles(InputFile1="results/test-IntersectGeoLayer-lines-linesAsIntersect-out.geojson",InputFile2="expected-results/test-IntersectGeoLayer-lines-linesAsIntersect-out.geojson",IfDifferent="Warn")
# Free all GeoLayers to avoid errors in suite tests.
FreeGeoLayers(GeoLayerIDs="*")
