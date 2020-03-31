StartLog(LogFile="results/test-AddGeoLayerAttribute-Polygon-Memory.gp.log")
# Test removing an attribute from a GeoLayer
# - input GeoJSON is a single-feature polygon layer
# - the attribute is being added to an in-memory GeoLayer
# Remove the results from the last run of this test, if exists.
RemoveFile(SourceFile="results/test-AddGeoLayerAttribute-Polygon-Memory-out.geojson",IfSourceFileNotFound="Ignore")
# Read the polygon GeoJSON (with GeoLayerID of "polygon") into the GeoProcessor
ReadGeoLayerFromGeoJSON(InputFile="data/polygon.geojson",GeoLayerID="polygon")
# Copy the GeoLayer
CopyGeoLayer(GeoLayerID="polygon")
# Add the `addTest` attribute value to GeoLayer "polygon".
AddGeoLayerAttribute(GeoLayerID="polygon_copy",AttributeName="addTest",AttributeType="string",InitialValue="test")
# Uncomment the next line to reproduce the expected results
# WriteGeoLayerToGeoJSON(GeoLayerID="polygon_copy",OutputFile="expected-results/test-AddGeoLayerAttribute-Polygon-Memory-out.geojson")
# Write the in-memory polygon Geolayer to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="polygon_copy",OutputFile="results/test-AddGeoLayerAttribute-Polygon-Memory-out.geojson")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-AddGeoLayerAttribute-Polygon-Memory-out.geojson",InputFile2="results/test-AddGeoLayerAttribute-Polygon-Memory-out.geojson",IfDifferent="Warn")