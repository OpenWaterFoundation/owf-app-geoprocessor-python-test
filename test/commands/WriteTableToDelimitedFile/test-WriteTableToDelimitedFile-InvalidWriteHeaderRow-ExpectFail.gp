StartLog(LogFile="results/test-WriteTableToDelimitedFile-InvalidWriteHeaderRow-ExpectFail.gp.log")
#
# Test that a FAIL occurs if attempting to enter an invalid Boolean for the WriteHeaderRow parameter.
#@expectedStatus Failure
#
#
# Read the text delimited file into the GeoProcessor 
ReadTableFromDelimitedFile(InputFile="data/table-csv-comma.csv", TableID="testTable")
# Attempt to write the table to a delimited file - should throw a FAILURE.
WriteTableToDelimitedFile(TableID="testTable", OutputFile="results/test-WriteTableToDelimitedFile-InvalidWriteHeaderRow-ExpectFail-out.txt", WriteHeaderRow="YES")