StartLog(LogFile="results/test-CopyGeoLayer-Points-IncludeAttributes.gp.log")
# Test copying a GeoLayer
# - data is a GeoJSON points layer
# - test the IncludeAttributes parameter
# Remove the resut POINTS geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-CopyGeoLayer-Points-IncludeAttributes-out.geojson",IfSourceFileNotFound="Ignore")
# Read the POINTS GeoJSON (with GeoLayerID of "points") into the GeoProcessor
ReadGeoLayerFromGeoJSON(InputFile="data/points.geojson",GeoLayerID="points")
# Copy the GeoLayer. Keep the Attribute `id` but remove all other attributes.
CopyGeoLayer(GeoLayerID="points",IncludeAttributes="id")
# Uncomment the line below to recreate the expected results
# WriteGeoLayerToGeoJSON(GeoLayerID="points_copy",OutputFile="expected-results/test-CopyGeoLayer-Points-IncludeAttributes-out.geojson")
# Write the copied Geolayer to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="points_copy",OutputFile="results/test-CopyGeoLayer-Points-IncludeAttributes-out.geojson")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-CopyGeoLayer-Points-IncludeAttributes-out.geojson",InputFile2="results/test-CopyGeoLayer-Points-IncludeAttributes-out.geojson",IfDifferent="Warn")