StartLog(LogFile="results/test-ReadGeoLayersFromFGDB-WrongFGDB-ExpectFail.gp.log")
# Test that a FAIL occurs if attempting to read a file geodatabase that does not exist
#@expectedStatus Failure
# Attempt to read the nonexisting filegeodatabase from the file geodatabase
ReadGeoLayersFromFGDB(InputFolder="data/nonexisting.gdb",ReadOnlyOneFeatureClass="False")
