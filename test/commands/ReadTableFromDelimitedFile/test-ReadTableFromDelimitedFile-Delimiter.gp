StartLog(LogFile="results/test-ReadTableFromDelimitedFile-Delimiter.gp.log")
#
# Test reading a Table from a delimited file. 
# - delimited file is a csv file
# - test the Delimiter parameter (delimiter is a semicolon)
#
# Remove the result csv file, if existing
RemoveFile(SourceFile="results/test-ReadTableFromDelimitedFile-Delimiter-out.csv",IfSourceFileNotFound="Ignore")
# Read the text delimited file into the GeoProcessor 
ReadTableFromDelimitedFile(InputFile="data/table-csv-semicolon.csv",TableID="testTable",Delimiter=";")
# Write the table to a delimited file. 
WriteTableToDelimitedFile(TableID="testTable",OutputFile="results/test-ReadTableFromDelimitedFile-Delimiter-out.csv",Delimiter=";",WriteIndexColumn="False")
# Compare the results to the input file. 
CompareFiles(InputFile1="results/test-ReadTableFromDelimitedFile-Delimiter-out.csv",InputFile2="data/table-csv-semicolon.csv",IfDifferent="Warn")
