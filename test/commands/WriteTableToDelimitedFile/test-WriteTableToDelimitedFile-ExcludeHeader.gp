StartLog(LogFile="results/test-WriteTableToDelimitedFile-ExcludeHeader.gp.log")
#
# Test writing a Table to a delimited file. 
#	- write to a csv file
# 	- use default delimiter of `COMMA`
# 	- exclude the header row with the WriteHeaderRow parameter set to False
#
#
# Remove the result csv file, if existing
RemoveFile(SourceFile="results/test-WriteTableToDelimitedFile-ExcludeHeader-out.csv", IfSourceFileNotFound="Ignore")
# Read the text delimited file into the GeoProcessor 
ReadTableFromDelimitedFile(InputFile="data/table-csv-comma.csv", TableID="testTable")
# Uncomment the line below to reproduce the expected results
#WriteTableToDelimitedFile(TableID="testTable", OutputFile="expected-results/test-WriteTableToDelimitedFile-ExcludeHeader-out.csv", WriteHeaderRow="False")
# Write the table to a delimited file. 
WriteTableToDelimitedFile(TableID="testTable", OutputFile="results/test-WriteTableToDelimitedFile-ExcludeHeader-out.csv", WriteHeaderRow="False")
# Compare the results to the input file. 
CompareFiles(InputFile1="results/test-WriteTableToDelimitedFile-ExcludeHeader-out.csv", InputFile2="expected-results/test-WriteTableToDelimitedFile-ExcludeHeader-out.csv", IfDifferent="Warn")