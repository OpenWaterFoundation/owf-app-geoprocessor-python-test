StartLog(LogFile="results/test-ReadTableFromExcel-TableID.gp.log")
#
# Test reading a Table from an Excel file. 
#	- use unique TableID
#	- Excel file is a `xls` file.
#
#
# Remove the result csv file, if existing
RemoveFile(SourceFile="results/test-ReadTableFromExcel-TableID-out.csv", IfSourceFileNotFound="Ignore")
# Read the excel workbook/worksheet into the GeoProcessor.
ReadTableFromExcel(InputFile="data/workbook-xls.xls", TableID="testTable")
# Uncomment the line below to reproduce the expected resutls.
#WriteTableToDelimitedFile(TableID="testTable", OutputFile="expected-results/test-ReadTableFromExcel-TableID-out.csv", WriteIndexColumn="False")
# Write the table to a delimited file. 
WriteTableToDelimitedFile(TableID="testTable", OutputFile="results/test-ReadTableFromExcel-TableID-out.csv", WriteIndexColumn="False")
# Compare the results to the input file. 
CompareFiles(InputFile1="results/test-ReadTableFromExcel-TableID-out.csv", InputFile2="expected-results/test-ReadTableFromExcel-TableID-out.csv", IfDifferent="Warn")