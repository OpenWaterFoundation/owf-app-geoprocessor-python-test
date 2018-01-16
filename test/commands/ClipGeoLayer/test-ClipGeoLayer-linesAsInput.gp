StartLog(LogFile="results/test-ClipGeoLayer-linesAsInput.gp.log")
# Test clipping a lines geojson layer by a polygon geojson layer
# Remove the result line geojson files from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ClipGeoLayer-linesAsInput-out.geojson", IfSourceFileNotFound="Ignore")
# Read the lines geojson (input GeoLayer) and the polygon geojson (clipping GeoLayer)
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/input_lines.geojson")
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/clipping_polygon.geojson")
# Clip the lines GeoLayerID by the clippling polygon 
ClipGeoLayer(InputGeoLayerID="input_lines", ClippingGeoLayerID="clipping_polygon")
# Uncomment the next line to reproduce the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="input_lines_clippedBy_clipping_polygon", OutputFile="expected-results/test-ClipGeoLayer-linesAsInput-out")
# Write the line, line and polygon Geolayers to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="input_lines_clippedBy_clipping_polygon", OutputFile="results/test-ClipGeoLayer-linesAsInput-out")
# Compare the results to the expected results
CompareFiles(InputFile1="results/test-ClipGeoLayer-linesAsInput-out.geojson", InputFile2="expected-results/test-ClipGeoLayer-linesAsInput-out.geojson", IfDifferent="Warn")