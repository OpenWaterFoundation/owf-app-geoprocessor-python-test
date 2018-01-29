StartLog(LogFile="results/test-AddGeoLayerAttribute-Point-On-Disk.gp.log")
# Test removing an attribute from a GeoLayer
# - input GeoJSON is a single-feature point layer
# - the attribute is being added to an on-disk GeoLayer
# Remove the results from the last run of this test, if exists.
RemoveFile(SourceFile="results/test-AddGeoLayerAttribute-Point-On-Disk-out.geojson", IfSourceFileNotFound="Ignore")
# Read the point GeoJSON (with GeoLayerID of "point") into the GeoProcessor
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/point.geojson", GeoLayerID="point")
# Copy the GeoLayer
CopyGeoLayer(GeoLayerID="point")
# Add the `addTest` attribute value to GeoLayer "point".
AddGeoLayerAttribute(GeoLayerID="point_copy", AttributeName="addTest", AttributeType="string", InitialValue="test")
# Uncomment the next line to reproduce the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="point_copy", OutputFile="expected-results/test-AddGeoLayerAttribute-Point-On-Disk-out")
# Write the in-memory point Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="point_copy", OutputFile="results/test-AddGeoLayerAttribute-Point-On-Disk-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-AddGeoLayerAttribute-Point-On-Disk-out.geojson", InputFile2="results/test-AddGeoLayerAttribute-Point-On-Disk-out.geojson",IfDifferent="Warn")