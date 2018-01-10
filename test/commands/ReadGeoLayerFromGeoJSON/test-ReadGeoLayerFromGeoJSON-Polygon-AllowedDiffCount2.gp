StartLog(LogFile="results/test-ReadGeoLayerFromGeoJSON-Polygon-AllowedDiffCount2.gp.log")
# Test reading a GeoLayer from a GeoJSON 
# - GeoJSON is a polygon layer
# - allows for two differences
#	- GeoJSON precision could be different
#	- GeoJSON name could be different
# Remove the result polygon geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayerFromGeoJSON-Polygon-AllowedDiffCount2-out.geojson", IfSourceFileNotFound="Ignore")
# Read the polygon GeoJSON (with GeoLayerID of "polygon") into the GeoProcessor 
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/polygon.geojson", GeoLayerID="polygon")
# Write the polygon Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="polygon", OutputFolder="results", OutputFilename="test-ReadGeoLayerFromGeoJSON-Polygon-AllowedDiffCount2-out")
# Compare the results to the expected results
CompareFiles(InputFile1="data/polygon.geojson", InputFile2="results/test-ReadGeoLayerFromGeoJSON-Polygon-AllowedDiffCount2-out.geojson",AllowedDiffCount="2",IfDifferent="Warn")