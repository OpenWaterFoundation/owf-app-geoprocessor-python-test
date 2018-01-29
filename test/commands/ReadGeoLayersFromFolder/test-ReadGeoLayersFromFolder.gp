StartLog(LogFile="results/test-ReadGeoLayersFromFolder.gp.log")
# Test reading multiple GeoLayers from a Folder 
# 	- the folder contains a shapefile, a geojson file and a text file
# Remove the result line geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayersFromFolder-line-out.geojson", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-ReadGeoLayersFromFolder-polygon-out.geojson", IfSourceFileNotFound="Ignore")
# Read all available GeoLayers from the data folder into the GeoProcessor 
ReadGeoLayersFromFolder(SpatialDataFolder="data")
# Write the line Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="line", OutputFile="results/test-ReadGeoLayersFromFolder-line-out")
# Uncomment the 2 lines below to recreate the expected results.
#WriteGeoLayerToGeoJSON(GeoLayerID="line", OutputFile="expected-results/test-ReadGeoLayersFromFolder-line-out")
#WriteGeoLayerToGeoJSON(GeoLayerID="polygon", OutputFile="expected-results/test-ReadGeoLayersFromFolder-polygon-out")
# Write the polygon GeoLayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="polygon", OutputFile="results/test-ReadGeoLayersFromFolder-polygon-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-ReadGeoLayersFromFolder-line-out.geojson", InputFile2="results/test-ReadGeoLayersFromFolder-line-out.geojson",IfDifferent="Warn")
CompareFiles(InputFile1="expected-results/test-ReadGeoLayersFromFolder-polygon-out.geojson", InputFile2="results/test-ReadGeoLayersFromFolder-polygon-out.geojson",IfDifferent="Warn")
