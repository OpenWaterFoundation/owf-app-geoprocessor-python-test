StartLog(LogFile="results/test-ReadGeoLayersFromFGDB-WrongFC-ExpectFail.gp.log")
# Test that a FAIL occurs if attempting to read a feature class that does not exist
#@expectedStatus Failure
# Attempt to read the nonexisting feature class from the file geodatabase
ReadGeoLayersFromFGDB(SpatialDataFolder="data/ReadGeoLayersFromFGDB-test.gdb", ReadOnlyOneFeatureClass="True", FeatureClass="nonexisting", GeoLayerID="line")