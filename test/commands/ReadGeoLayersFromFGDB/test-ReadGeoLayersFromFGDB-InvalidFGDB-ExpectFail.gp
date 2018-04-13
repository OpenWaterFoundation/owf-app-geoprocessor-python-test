StartLog(LogFile="results/test-ReadGeoLayersFromFGDB-InvalidFGDB-ExpectFail.gp.log")
# Test that a FAIL occurs if attempting to read an invalid file geodatabase
#@expectedStatus Failure
# Attempt to read the nonexisting filegeodatabase from the file geodatabase
ReadGeoLayersFromFGDB(SpatialDataFolder="data/invalid.gdb", ReadOnlyOneFeatureClass="False")