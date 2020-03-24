StartLog(LogFile="results/test-ReadGeoLayersFromFolder-GeoLayerID_prefix-line.gp.log")
# Test GeoLayerID_prefix parameter of ReadGeoLayerFromFolder
# - the folder contains a shapefile, a geojson file and a text file
# - only the line.geojson will be written out to test for the prefix 
# Remove the result line geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayersFromFolder-GeoLayerID_prefix-line-out.geojson",IfSourceFileNotFound="Ignore")
# Read all available GeoLayers from the data folder into the GeoProcessor 
ReadGeoLayersFromFolder(InputFolder="data",GeoLayerID_prefix="testPrefix")
# Uncomment the 1 line below to recreate the expected results.
#WriteGeoLayerToGeoJSON(GeoLayerID="testPrefix_line",OutputFile="expected-results/test-ReadGeoLayersFromFolder-GeoLayerID_prefix-line-out")
# Write the line Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="testPrefix_line",OutputFile="results/test-ReadGeoLayersFromFolder-GeoLayerID_prefix-line-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-ReadGeoLayersFromFolder-GeoLayerID_prefix-line-out.geojson",InputFile2="results/test-ReadGeoLayersFromFolder-GeoLayerID_prefix-line-out.geojson",IfDifferent="Warn")
