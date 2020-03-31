StartLog(LogFile="results/test-ClipGeoLayer-OutputGeoLayerID-pointsAsInput.gp.log")
# Tests OutputGeoLayerID parameter of ClipGeoLayer command
# - only going to write out points layer to test parameter because overall functionality is already tested in
# - test-ClipGeoLayer-####AsInput.gp
# Remove the result point geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ClipGeoLayer-OutputGeoLayerID-pointsAsInput-out.geojson",IfSourceFileNotFound="Ignore")
# Read the points geojson (input GeoLayer) and the polygon geojson (clipping GeoLayer)
ReadGeoLayerFromGeoJSON(InputFile="data/input_points.geojson")
ReadGeoLayerFromGeoJSON(InputFile="data/clipping_polygon.geojson")
# Clip the points GeoLayerID by the clippling polygon. Assign a unique OutputGeoLayerID
ClipGeoLayer(InputGeoLayerID="input_points",ClippingGeoLayerID="clipping_polygon",OutputGeoLayerID="test")
# Uncomment the next line to reproduce the expected results
# WriteGeoLayerToGeoJSON(GeoLayerID="test",OutputFile="expected-results/test-ClipGeoLayer-OutputGeoLayerID-pointsAsInput-out.geojson")
# Write the point to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="test",OutputFile="results/test-ClipGeoLayer-OutputGeoLayerID-pointsAsInput-out.geojson")
# Compare the results to the expected results
CompareFiles(InputFile1="results/test-ClipGeoLayer-OutputGeoLayerID-pointsAsInput-out.geojson",InputFile2="expected-results/test-ClipGeoLayer-OutputGeoLayerID-pointsAsInput-out.geojson",IfDifferent="Warn")