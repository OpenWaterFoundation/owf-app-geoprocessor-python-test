StartLog(LogFile="results/test-CopyGeoLayer-Points-IncludeFeaturesIf.gp.log")
# Test copying a GeoLayer 
# - data is a GeoJSON points layer
# - test the IncludeFeaturesIf parameter
# Remove the resut POINTS geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-CopyGeoLayer-Points-IncludeFeaturesIf-out.geojson", IfSourceFileNotFound="Ignore")
# Read the POINTS GeoJSON (with GeoLayerID of "points") into the GeoProcessor 
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/points.geojson", GeoLayerID="points")
# Copy the GeoLayer. Keep only the features that have 'Y' as the value for the Keep_Field attribute.
CopyGeoLayer(GeoLayerID="points", IncludeFeaturesIf="Keep_Field='Y'")
# Uncomment the line below to recreate the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="points_copy", OutputFile="expected-results/test-CopyGeoLayer-Points-IncludeFeaturesIf-out")
# Write the copied Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="points_copy", OutputFile="results/test-CopyGeoLayer-Points-IncludeFeaturesIf-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-CopyGeoLayer-Points-IncludeFeaturesIf-out.geojson", InputFile2="results/test-CopyGeoLayer-Points-IncludeFeaturesIf-out.geojson",IfDifferent="Warn")