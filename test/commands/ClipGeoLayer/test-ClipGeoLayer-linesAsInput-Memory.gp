StartLog(LogFile="results/test-ClipGeoLayer-linesAsInput-Memory.gp.log")
# Test clipping a lines geojson layer by a polygon geojson layer
# - both input GeoLayers are memory layers 
#
# Remove the result line geojson files from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ClipGeoLayer-linesAsInput-Memory-out.geojson",IfSourceFileNotFound="Ignore")
# Read the lines geojson (input GeoLayer) and the polygon geojson (clipping GeoLayer)
ReadGeoLayerFromGeoJSON(InputFile="data/input_lines.geojson",GeoLayerID="Lines")
ReadGeoLayerFromGeoJSON(InputFile="data/clipping_polygon.geojson",GeoLayerID="Polygon")
# Make copied of both GeoLayers (this makes each GeoLayer a memory layer).
CopyGeoLayer(GeoLayerID="Lines")
CopyGeoLayer(GeoLayerID="Polygon")
# Clip the memory Lines GeoLayer by the memory Polygon GeoLayer.
ClipGeoLayer(InputGeoLayerID="Lines_copy",ClippingGeoLayerID="Polygon_copy",OutputGeoLayerID="output")
# Uncomment the next line to reproduce the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="output",OutputFile="expected-results/test-ClipGeoLayer-linesAsInput-Memory-out")
# Write the line and polygon Geolayers to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="output",OutputFile="results/test-ClipGeoLayer-linesAsInput-Memory-out")
# Compare the results to the expected results
CompareFiles(InputFile1="results/test-ClipGeoLayer-linesAsInput-Memory-out.geojson",InputFile2="expected-results/test-ClipGeoLayer-linesAsInput-Memory-out.geojson",IfDifferent="Warn")
