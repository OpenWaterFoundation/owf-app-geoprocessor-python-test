StartLog(LogFile="results/test-ReadGeoLayerFromGeoJSON-Point.gp.log")
# Test reading a GeoLayer from a GeoJSON 
# - GeoJSON is a point layer
# Remove the result point geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayerFromGeoJSON-Point-out.geojson", IfSourceFileNotFound="Ignore")
# Read the point GeoJSON (with GeoLayerID of "point") into the GeoProcessor 
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/point.geojson", GeoLayerID="point")
# Uncomment the line below to recreate the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="point", OutputFile="expected-results/test-ReadGeoLayerFromGeoJSON-Point-out")
# Write the point Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="point", OutputFile="results/test-ReadGeoLayerFromGeoJSON-Point-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-ReadGeoLayerFromGeoJSON-Point-out.geojson", InputFile2="results/test-ReadGeoLayerFromGeoJSON-Point-out.geojson",IfDifferent="Warn")