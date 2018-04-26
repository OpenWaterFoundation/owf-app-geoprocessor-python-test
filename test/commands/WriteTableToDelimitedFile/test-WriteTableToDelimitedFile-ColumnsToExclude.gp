StartLog(LogFile="results/test-WriteTableToDelimitedFile-ColumnsToExclude.gp.log")
#
# Test writing a Table to a delimited file. 
#	- write to a csv file
# 	- Exclude the `STRENGTH` column and the `TableID` column
# 	- use default delimiter of `COMMA`
#
#
# Remove the result csv file, if existing
RemoveFile(SourceFile="results/test-WriteTableToDelimitedFile-ColumnsToExclude-out.csv", IfSourceFileNotFound="Ignore")
# Read the text delimited file into the GeoProcessor 
ReadTableFromDelimitedFile(InputFile="data/table-csv-comma.csv", TableID="testTable")
# Uncomment the line below to reproduce the expected results
# WriteTableToDelimitedFile(TableID="testTable", OutputFile="expected-results/test-WriteTableToDelimitedFile-ColumnsToExclude-out.csv", ColumnsToExclude="Str*, T*")
# Write the table to a delimited file. 
WriteTableToDelimitedFile(TableID="testTable", OutputFile="results/test-WriteTableToDelimitedFile-ColumnsToExclude-out.csv", ColumnsToExclude="Str*, T*")
# Compare the results to the input file. 
CompareFiles(InputFile1="results/test-WriteTableToDelimitedFile-ColumnsToExclude-out.csv", InputFile2="expected-results/test-WriteTableToDelimitedFile-ColumnsToExclude-out.csv", IfDifferent="Warn")