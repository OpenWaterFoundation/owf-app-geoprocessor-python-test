StartLog(LogFile="results/test-WriteTableToDelimitedFile-InvalidDelimiter-ExpectFail.gp.log")
#
# Test that a FAIL occurs if attempting to write a delimiter of more than one character
#@expectedStatus Failure
#
#
# Read the text delimited file into the GeoProcessor 
ReadTableFromDelimitedFile(InputFile="data/table-csv-comma.csv", TableID="testTable")
# Attempt to write the table to a delimited file - should throw a FAILURE.
WriteTableToDelimitedFile(TableID="testTable", OutputFile="results/test-WriteTableToDelimitedFile-txt-out.txt", Delimiter="pq")