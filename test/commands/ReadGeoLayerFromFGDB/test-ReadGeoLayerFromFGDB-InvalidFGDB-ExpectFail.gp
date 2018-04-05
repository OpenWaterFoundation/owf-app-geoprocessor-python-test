StartLog(LogFile="results/test-ReadGeoLayerFromFGDB-InvalidFGDB-ExpectFail.gp.log")
# Test that a FAIL occurs if attempting to read an invalid file geodatabase
#@expectedStatus Failure
# Attempt to read the nonexisting filegeodatabase from the file geodatabase
ReadGeoLayerFromFGDB(SpatialDataFolder="data/invalid.gdb", FeatureClass="nonexisting", GeoLayerID="line")