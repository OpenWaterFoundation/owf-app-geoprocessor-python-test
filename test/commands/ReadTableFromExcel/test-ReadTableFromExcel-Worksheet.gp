StartLog(LogFile="results/test-ReadTableFromExcel-Worksheet.gp.log")
#
# Test reading a Table from an Excel file. 
#	- Read a specific worksheet using the `WORKSHEET` parameter
#
#
# Remove the result csv file, if existing
RemoveFile(SourceFile="results/test-ReadTableFromExcel-Worksheet-out.csv", IfSourceFileNotFound="Ignore")
# Read the excel workbook/worksheet into the GeoProcessor.
ReadTableFromExcel(InputFile="data/workbook-xlsx.xlsx", Worksheet="TestSheet2")
# Uncomment the line below to reproduce the expected resutls.
#WriteTableToDelimitedFile(TableID="TestSheet2", OutputFile="expected-results/test-ReadTableFromExcel-Worksheet-out.csv", WriteIndexColumn="False")
# Write the table to a delimited file. 
WriteTableToDelimitedFile(TableID="TestSheet2", OutputFile="results/test-ReadTableFromExcel-Worksheet-out.csv", WriteIndexColumn="False")
# Compare the results to the input file. 
CompareFiles(InputFile1="results/test-ReadTableFromExcel-Worksheet-out.csv", InputFile2="expected-results/test-ReadTableFromExcel-Worksheet-out.csv", IfDifferent="Warn")