StartLog(LogFile="results/test-WriteTableToDelimitedFile-csv.gp.log")
#
# Test reading a Table from a delimited file. 
#	- write to a csv file
# 	- use default delimiter of `COMMA`
#
#
# Remove the result csv file, if existing
RemoveFile(SourceFile="results/test-WriteTableToDelimitedFile-csv-out.csv", IfSourceFileNotFound="Ignore")
# Read the text delimited file into the GeoProcessor 
ReadTableFromDelimitedFile(InputFile="data/table-csv-comma.csv", TableID="testTable")
# Uncomment the line below to reproduce the expected results
#WriteTableToDelimitedFile(TableID="testTable", OutputFile="expected-results/test-WriteTableToDelimitedFile-csv-out.csv")
# Write the table to a delimited file. 
WriteTableToDelimitedFile(TableID="testTable", OutputFile="results/test-WriteTableToDelimitedFile-csv-out.csv")
# Compare the results to the input file. 
CompareFiles(InputFile1="results/test-WriteTableToDelimitedFile-csv-out.csv", InputFile2="expected-results/test-WriteTableToDelimitedFile-csv-out.csv", IfDifferent="Warn")