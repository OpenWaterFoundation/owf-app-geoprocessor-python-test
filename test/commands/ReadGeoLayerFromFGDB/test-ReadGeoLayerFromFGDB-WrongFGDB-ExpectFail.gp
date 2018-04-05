StartLog(LogFile="results/test-ReadGeoLayerFromFGDB-WrongFGDB-ExpectFail.gp.log")
# Test that a FAIL occurs if attempting to read a file geodatabase that does not exist
#@expectedStatus Failure
# Attempt to read the nonexisting filegeodatabase from the file geodatabase
ReadGeoLayerFromFGDB(SpatialDataFolder="data/nonexisting.gdb", FeatureClass="nonexisting", GeoLayerID="line")