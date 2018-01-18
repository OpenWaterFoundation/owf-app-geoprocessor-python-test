StartLog(LogFile="results/test-ReadGeoLayersFromFolder-Subset_Pattern-ExpectFail.gp.log")
# Test Subset_Pattern parameter of ReadGeoLayerFromFolder
# 	- the folder contains a shapefile, a geojson file and a text file
# 	- only files that start with 'C' should be read as a geolayer
#	- becuase there are no files in the folder that start with 'C', the test SHOULD FAIL when trying to write the GeoLayer out to a GeoJSON file
# Read all available GeoLayers from the data folder into the GeoProcessor (that start with 'C')
ReadGeoLayersFromFolder(SpatialDataFolder="data", Subset_Pattern="C*")
# Write the line Geolayer to a GeoJSON file - this should fail
WriteGeoLayerToGeoJSON(GeoLayerID="line", OutputFile="results/test-ReadGeoLayersFromFolder-Subset_Pattern-ExpectFail-out")