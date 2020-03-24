StartLog(LogFile="results/test-ReadTableFromExcel-xls.gp.log")
#
# Test reading a Table from an Excel file. 
# - all default parameters
# - Excel file is a `xls` file.
#
# Remove the result csv file, if existing
RemoveFile(SourceFile="results/test-ReadTableFromExcel-xls-out.csv",IfSourceFileNotFound="Ignore")
# Read the excel workbook/worksheet into the GeoProcessor.
ReadTableFromExcel(InputFile="data/workbook-xls.xls")
# Uncomment the line below to reproduce the expected resutls.
#WriteTableToDelimitedFile(TableID="TestSheet1",OutputFile="expected-results/test-ReadTableFromExcel-xls-out.csv",WriteIndexColumn="False")
# Write the table to a delimited file. 
WriteTableToDelimitedFile(TableID="TestSheet1",OutputFile="results/test-ReadTableFromExcel-xls-out.csv",WriteIndexColumn="False")
# Compare the results to the input file. 
CompareFiles(InputFile1="results/test-ReadTableFromExcel-xls-out.csv",InputFile2="expected-results/test-ReadTableFromExcel-xls-out.csv",IfDifferent="Warn")
