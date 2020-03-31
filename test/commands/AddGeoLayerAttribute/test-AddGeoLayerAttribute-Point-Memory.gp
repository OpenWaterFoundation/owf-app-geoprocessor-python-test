StartLog(LogFile="results/test-AddGeoLayerAttribute-Point-Memory.gp.log")
# Test removing an attribute from a GeoLayer
# - input GeoJSON is a single-feature point layer
# - the attribute is being added to an in-memory GeoLayer
# Remove the results from the last run of this test, if exists.
RemoveFile(SourceFile="results/test-AddGeoLayerAttribute-Point-Memory-out.geojson",IfSourceFileNotFound="Ignore")
# Read the point GeoJSON (with GeoLayerID of "point") into the GeoProcessor
ReadGeoLayerFromGeoJSON(InputFile="data/point.geojson",GeoLayerID="point")
# Copy the GeoLayer
CopyGeoLayer(GeoLayerID="point")
# Add the `addTest` attribute value to GeoLayer "polygon".
AddGeoLayerAttribute(GeoLayerID="point_copy",AttributeName="addTest",AttributeType="string",InitialValue="test")
# Uncomment the next line to reproduce the expected results
# WriteGeoLayerToGeoJSON(GeoLayerID="point_copy",OutputFile="expected-results/test-AddGeoLayerAttribute-Point-Memory-out.geojson")
# Write the in-memory point Geolayer to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="point_copy",OutputFile="results/test-AddGeoLayerAttribute-Point-Memory-out.geojson")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-AddGeoLayerAttribute-Point-Memory-out.geojson",InputFile2="results/test-AddGeoLayerAttribute-Point-Memory-out.geojson",IfDifferent="Warn")