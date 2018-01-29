StartLog(LogFile="results/test-ReadGeoLayerFromGeoJSON-Point-AllowedDiffCount2.gp.log")
# Test reading a GeoLayer from a GeoJSON 
# - GeoJSON is a point layer
# - allows for two differences
#	- GeoJSON precision could be different
#	- GeoJSON name could be different
# Remove the result point geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayerFromGeoJSON-Point-AllowedDiffCount2-out.geojson", IfSourceFileNotFound="Ignore")
# Read the point GeoJSON (with GeoLayerID of "point") into the GeoProcessor 
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/point.geojson", GeoLayerID="point")
# Write the point Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="point", OutputFile="results/test-ReadGeoLayerFromGeoJSON-Point-AllowedDiffCount2-out")
# Compare the results to the expected results
CompareFiles(InputFile1="data/point.geojson", InputFile2="results/test-ReadGeoLayerFromGeoJSON-Point-AllowedDiffCount2-out.geojson",AllowedDiffCount="2",IfDifferent="Warn")