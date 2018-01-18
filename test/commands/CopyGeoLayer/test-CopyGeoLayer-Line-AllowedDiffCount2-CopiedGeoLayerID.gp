StartLog(LogFile="results/test-CopyGeoLayer-Line-AllowedDiffCount2-CopiedGeoLayerID.gp.log")
# Test copying a GeoLayer (using CopiedGeoLayerID parameter)
# - data is a GeoJSON line layer
# - allows for two differences
#	- GeoJSON precision could be different
#	- GeoJSON name could be different
# Remove the result line geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-CopyGeoLayer-Line-AllowedDiffCount2-CopiedGeoLayerID-out.geojson", IfSourceFileNotFound="Ignore")
# Read the line GeoJSON (with GeoLayerID of "line") into the GeoProcessor 
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/line.geojson", GeoLayerID="line")
# Copy the GeoLayer 
CopyGeoLayer(GeoLayerID="line", CopiedGeoLayerID="TestID")
# Write the copied Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="TestID", OutputFile="results/test-CopyGeoLayer-Line-AllowedDiffCount2-CopiedGeoLayerID-out")
# Compare the results to the expected results
CompareFiles(InputFile1="data/line.geojson", InputFile2="results/test-CopyGeoLayer-Line-AllowedDiffCount2-CopiedGeoLayerID-out.geojson",AllowedDiffCount="2",IfDifferent="Warn")