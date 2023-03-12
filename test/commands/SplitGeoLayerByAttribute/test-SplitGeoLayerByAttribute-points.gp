StartLog(LogFile="results/test-SplitGeoLayerByAttribute-pointsg.gp.log")
# Test splitting a GeoLayer into other layers using an attribute
# - simple point data from a GeoJSON file
# Remove the result POINTS geojson file from the last run of the test
#RemoveFile(SourceFile="results/test-SplitGeoLayerByAttribute-points-out.geojson",IfSourceFileNotFound="Ignore")
# Read the POINTS GeoJSON (with GeoLayerID of "points") into the GeoProcessor
ReadGeoLayerFromGeoJSON(InputFile="data/points.geojson",GeoLayerID="points")
# Split the GeoLayer.
SplitGeoLayerByAttribute(InputGeoLayerID="points",AttributeName="Group",TemporaryFolder="results/points-split")
# Uncomment the 3 lines below to recreate the expected results
# WriteGeoLayerToGeoJSON(GeoLayerID="points_Group_a",OutputFile="expected-results/test-SplitGeoLayerByAttribute-points-out-a.geojson")
# WriteGeoLayerToGeoJSON(GeoLayerID="points_Group_b",OutputFile="expected-results/test-SplitGeoLayerByAttribute-points-out-b.geojson")
# WriteGeoLayerToGeoJSON(GeoLayerID="points_Group_c",OutputFile="expected-results/test-SplitGeoLayerByAttribute-points-out-c.geojson")
# Write the layers
WriteGeoLayerToGeoJSON(GeoLayerID="points_Group_a",OutputFile="results/test-SplitGeoLayerByAttribute-points-out-a.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="points_Group_b",OutputFile="results/test-SplitGeoLayerByAttribute-points-out-b.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="points_Group_c",OutputFile="results/test-SplitGeoLayerByAttribute-points-out-c.geojson")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-SplitGeoLayerByAttribute-points-out-a.geojson",InputFile2="results/test-SplitGeoLayerByAttribute-points-out-a.geojson",IfDifferent="Warn")
CompareFiles(InputFile1="expected-results/test-SplitGeoLayerByAttribute-points-out-b.geojson",InputFile2="results/test-SplitGeoLayerByAttribute-points-out-b.geojson",IfDifferent="Warn")
CompareFiles(InputFile1="expected-results/test-SplitGeoLayerByAttribute-points-out-c.geojson",InputFile2="results/test-SplitGeoLayerByAttribute-points-out-c.geojson",IfDifferent="Warn")