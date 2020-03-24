StartLog(LogFile="results/test-WriteTableToDelimitedFile-txt.gp.log")
#
# Test writing a Table to a delimited file. 
# - write to a txt file
# - use default delimiter of `COMMA`
#
# Remove the result txt file, if existing
RemoveFile(SourceFile="results/test-WriteTableToDelimitedFile-txt-out.txt",IfSourceFileNotFound="Ignore")
# Read the text delimited file into the GeoProcessor 
ReadTableFromDelimitedFile(InputFile="data/table-csv-comma.csv",TableID="testTable")
# Uncomment the line below to reproduce the expected results
# WriteTableToDelimitedFile(TableID="testTable",OutputFile="expected-results/test-WriteTableToDelimitedFile-txt-out.txt")
# Write the table to a delimited file. 
WriteTableToDelimitedFile(TableID="testTable",OutputFile="results/test-WriteTableToDelimitedFile-txt-out.txt")
# Compare the results to the input file. 
CompareFiles(InputFile1="results/test-WriteTableToDelimitedFile-txt-out.txt",InputFile2="expected-results/test-WriteTableToDelimitedFile-txt-out.txt",IfDifferent="Warn")
