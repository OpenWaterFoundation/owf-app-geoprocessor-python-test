StartLog(LogFile="results/test-ReadGeoLayersFromFGDB-Subset_Pattern-ExpectFail.gp.log")
# Test Subset_Pattern parameter of ReadGeoLayerFromFGDB
# 	- the file geodatabase contains a point, a line and a polygon feature class
# 	- only feature classes that start with 'C' should be read as a geolayer
#	- becuase there are no feature classes in the file geodatabase that start with 'C', the test SHOULD FAIL when trying to write the GeoLayer out to a GeoJSON file
#@expectedStatus Failure
# Read all available GeoLayers from the file geodatabase into the GeoProcessor (that start with 'C')
ReadGeoLayersFromFGDB(SpatialDataFolder="data/ReadGeoLayersFromFGDB-test.gdb", ReadOnlyOneFeatureClass="False", Subset_Pattern="C*")
# Write the line Geolayer to a GeoJSON file - this should fail
WriteGeoLayerToGeoJSON(GeoLayerID="line", OutputFile="results/test-ReadGeoLayersFromFGDB-Subset_Pattern-ExpectFail-out")