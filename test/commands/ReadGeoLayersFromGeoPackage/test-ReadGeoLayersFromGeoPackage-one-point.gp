StartLog(LogFile="results/test-ReadGeoLayersFromGeoPackage-one-points.gp.log")
# Test reading a GeoLayer from a GeoPackage file
# - point geometry
# - read only one specific GeoLayer
#
# Remove the result point geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayersFromGeoPackage-one-points-out.geojson",IfSourceFileNotFound="Ignore")
# Copy the GeoPackage file to results because reading it causes a change
CopyFile(SourceFile="data/points-one-layer.gpkg",DestinationFile="results/points-one-layer.gpkg")
# Read the `point` feature class from the file geodatabase
ReadGeoLayersFromGeoPackage(InputFile="results/points-one-layer.gpkg",ReadOneLayer="True",LayerName="Group_a",GeoLayerID="points")
# Uncomment the next line to reproduce the expected results
# WriteGeoLayerToGeoJSON(GeoLayerID="points",OutputFile="expected-results/test-ReadGeoLayersFromGeoPackage-one-points-out")
# Write the point Geolayer to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="points",OutputFile="results/test-ReadGeoLayersFromGeoPackage-one-points-out")
# Compare the results to the expected results
CompareFiles(InputFile1="results/test-ReadGeoLayersFromGeoPackage-one-points-out.geojson",InputFile2="expected-results/test-ReadGeoLayersFromGeoPackage-one-points-out.geojson",IfDifferent="Warn")