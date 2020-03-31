StartLog(LogFile="results/test-ClipGeoLayer-polygonsAsInput.gp.log")
# Test clipping a polygons geojson layer by a polygon geojson layer
# Remove the result polygon geojson files from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ClipGeoLayer-polygonsAsInput-out.geojson",IfSourceFileNotFound="Ignore")
# Read the polygons geojson (input GeoLayer) and the polygon geojson (clipping GeoLayer)
ReadGeoLayerFromGeoJSON(InputFile="data/input_polygons.geojson")
ReadGeoLayerFromGeoJSON(InputFile="data/clipping_polygon.geojson")
# Clip the polygons GeoLayerID by the clippling polygon
ClipGeoLayer(InputGeoLayerID="input_polygons",ClippingGeoLayerID="clipping_polygon")
# Uncomment the next polygon to reproduce the expected results
# WriteGeoLayerToGeoJSON(GeoLayerID="input_polygons_clippedBy_clipping_polygon",OutputFile="expected-results/test-ClipGeoLayer-polygonsAsInput-out.geojson")
# Write the polygon, polygon and polygon Geolayers to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="input_polygons_clippedBy_clipping_polygon",OutputFile="results/test-ClipGeoLayer-polygonsAsInput-out.geojson")
# Compare the results to the expected results
CompareFiles(InputFile1="results/test-ClipGeoLayer-polygonsAsInput-out.geojson",InputFile2="expected-results/test-ClipGeoLayer-polygonsAsInput-out.geojson",IfDifferent="Warn")