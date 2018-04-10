StartLog(LogFile="results/test-ReadTableFromExcel-xlsx.gp.log")
#
# Test reading a Table from an Excel file. 
#	- all default parameters
#	- Excel file is a `xlsx` file.
#
#
# Remove the result csv file, if existing
RemoveFile(SourceFile="results/test-ReadTableFromExcel-xlsx-out.csv", IfSourceFileNotFound="Ignore")
# Read the excel workbook/worksheet into the GeoProcessor.
ReadTableFromExcel(InputFile="data/workbook-xlsx.xlsx")
# Uncomment the line below to reproduce the expected resutls.
#WriteTableToDelimitedFile(TableID="TestSheet1", OutputFile="expected-results/test-ReadTableFromExcel-xlsx-out.csv", WriteIndexColumn="False")
# Write the table to a delimited file. 
WriteTableToDelimitedFile(TableID="TestSheet1", OutputFile="results/test-ReadTableFromExcel-xlsx-out.csv", WriteIndexColumn="False")
# Compare the results to the input file. 
CompareFiles(InputFile1="results/test-ReadTableFromExcel-xlsx-out.csv", InputFile2="expected-results/test-ReadTableFromExcel-xlsx-out.csv", IfDifferent="Warn")