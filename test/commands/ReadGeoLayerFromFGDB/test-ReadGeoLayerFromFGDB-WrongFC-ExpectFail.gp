StartLog(LogFile="results/test-ReadGeoLayerFromFGDB-WrongFC-ExpectFail.gp.log")
# Test that a FAIL occurs if attempting to read a feature class that does not exist
#@expectedStatus Failure
# Attempt to read the nonexisting feature class from the file geodatabase
ReadGeoLayerFromFGDB(SpatialDataFolder="data/ReadGeoLayerFromFGDB-test.gdb", FeatureClass="nonexisting", GeoLayerID="line")