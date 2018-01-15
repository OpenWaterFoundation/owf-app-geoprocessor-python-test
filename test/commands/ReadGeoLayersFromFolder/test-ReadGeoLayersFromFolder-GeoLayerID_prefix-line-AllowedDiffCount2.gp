StartLog(LogFile="results/test-ReadGeoLayersFromFolder-GeoLayerID_prefix-line-AllowedDiffCount2.gp.log")
# Test GeoLayerID_prefix parameter of ReadGeoLayerFromFolder
# 	- the folder contains a shapefile, a geojson file and a text file
# 	- only the line.geojson will be written out to test for the prefix 
#	- Allow for two differences
#		- geometry precision
#		- geojson name
# Remove the result line geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayersFromFolder-GeoLayerID_prefix-line-AllowedDiffCount2-out.geojson", IfSourceFileNotFound="Ignore")
# Read all available GeoLayers from the data folder into the GeoProcessor 
ReadGeoLayersFromFolder(SpatialDataFolder="data", GeoLayerID_prefix="testPrefix")
# Write the line Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="testPrefix_line", OutputFile="results/test-ReadGeoLayersFromFolder-GeoLayerID_prefix-line-AllowedDiffCount2-out")
# Compare the results to the expected results
CompareFiles(InputFile1="data/line.geojson", InputFile2="results/test-ReadGeoLayersFromFolder-GeoLayerID_prefix-line-AllowedDiffCount2-out.geojson", AllowedDiffCount="2", IfDifferent="Warn")