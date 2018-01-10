StartLog(LogFile="results/test-ReadGeoLayerFromGeoJSON-Line-AllowedDiffCount2.gp.log")
# Test reading a GeoLayer from a GeoJSON 
# - GeoJSON is a line layer
# - allows for two differences
#	- GeoJSON precision could be different
#	- GeoJSON name could be different
# Remove the result line geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayerFromGeoJSON-Line-AllowedDiffCount2-out.geojson", IfSourceFileNotFound="Ignore")
# Read the line GeoJSON (with GeoLayerID of "line") into the GeoProcessor 
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/line.geojson", GeoLayerID="line")
# Write the line Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="line", OutputFolder="results", OutputFilename="test-ReadGeoLayerFromGeoJSON-Line-AllowedDiffCount2-out")
# Compare the results to the expected results
CompareFiles(InputFile1="data/line.geojson", InputFile2="results/test-ReadGeoLayerFromGeoJSON-Line-AllowedDiffCount2-out.geojson",AllowedDiffCount="2",IfDifferent="Warn")