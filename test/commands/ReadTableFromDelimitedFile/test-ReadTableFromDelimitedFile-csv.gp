StartLog(LogFile="results/test-ReadTableFromDelimitedFile-csv.gp.log")
#
# Test reading a Table from a delimited file. 
# - delimited file is a csv file
# - delimiter is default (comma)
#
# Remove the result csv file, if existing
RemoveFile(SourceFile="results/test-ReadTableFromDelimitedFile-csv-out.csv",IfSourceFileNotFound="Ignore")
# Read the text delimited file into the GeoProcessor 
ReadTableFromDelimitedFile(InputFile="data/table-csv-comma.csv",TableID="testTable")
# Write the table to a delimited file. 
WriteTableToDelimitedFile(TableID="testTable",OutputFile="results/test-ReadTableFromDelimitedFile-csv-out.csv",WriteIndexColumn="False")
# Compare the results to the input file. 
CompareFiles(InputFile1="results/test-ReadTableFromDelimitedFile-csv-out.csv",InputFile2="data/table-csv-comma.csv",IfDifferent="Warn")
