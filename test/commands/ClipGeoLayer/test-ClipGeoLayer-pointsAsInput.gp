StartLog(LogFile="results/test-ClipGeoLayer-pointsAsInput.gp.log")
# Test clipping a points geojson layer by a polygon geojson layer
#@docExample
# Remove the result point geojson files from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ClipGeoLayer-pointsAsInput-out.geojson",IfSourceFileNotFound="Ignore")
# Read the points geojson (input GeoLayer) and the polygon geojson (clipping GeoLayer)
ReadGeoLayerFromGeoJSON(InputFile="data/input_points.geojson")
ReadGeoLayerFromGeoJSON(InputFile="data/clipping_polygon.geojson")
# Clip the points GeoLayerID by the clippling polygon
ClipGeoLayer(InputGeoLayerID="input_points",ClippingGeoLayerID="clipping_polygon")
# Uncomment the next line to reproduce the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="input_points_clippedBy_clipping_polygon",OutputFile="expected-results/test-ClipGeoLayer-pointsAsInput-out")
# Write the point, line and polygon Geolayers to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="input_points_clippedBy_clipping_polygon",OutputFile="results/test-ClipGeoLayer-pointsAsInput-out")
# Compare the results to the expected results
CompareFiles(InputFile1="results/test-ClipGeoLayer-pointsAsInput-out.geojson",InputFile2="expected-results/test-ClipGeoLayer-pointsAsInput-out.geojson",IfDifferent="Warn")