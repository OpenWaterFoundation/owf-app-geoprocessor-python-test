StartLog(LogFile="results/test-WriteTableToDelimitedFile-ColumnsToInclude.gp.log")
#
# Test writing a Table to a delimited file. 
# - write to a csv file
# - use default delimiter of `COMMA`
# - Only include the `STRENGTH` column
#
# Remove the result csv file, if existing
RemoveFile(SourceFile="results/test-WriteTableToDelimitedFile-ColumnsToInclude-out.csv",IfSourceFileNotFound="Ignore")
# Read the text delimited file into the GeoProcessor 
ReadTableFromDelimitedFile(InputFile="data/table-csv-comma.csv",TableID="testTable")
# Uncomment the line below to reproduce the expected results
# WriteTableToDelimitedFile(TableID="testTable",OutputFile="expected-results/test-WriteTableToDelimitedFile-ColumnsToInclude-out.csv",ColumnsToInclude="Str*")
# Write the table to a delimited file. 
WriteTableToDelimitedFile(TableID="testTable",OutputFile="results/test-WriteTableToDelimitedFile-ColumnsToInclude-out.csv",ColumnsToInclude="Str*")
# Compare the results to the input file. 
CompareFiles(InputFile1="results/test-WriteTableToDelimitedFile-ColumnsToInclude-out.csv",InputFile2="expected-results/test-WriteTableToDelimitedFile-ColumnsToInclude-out.csv",IfDifferent="Warn")
