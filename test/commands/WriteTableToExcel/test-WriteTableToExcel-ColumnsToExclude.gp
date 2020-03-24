StartLog(LogFile="results/test-WriteTableToExcel-ColumnsToExclude.gp.log")
#
# Test writing a Table to an Excel workbook file. 
# - write to a new Excel file 
# - excludes the Integer and Boolean field
#
# Remove the result csv file, if existing
RemoveFile(SourceFile="results/test-WriteTableToExcel-ColumnsToExclude-out.csv",IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-WriteTableToExcel-ColumnsToExclude-out.xlsx",IfSourceFileNotFound="Ignore")
# Read the excel file into the GeoProcessor 
ReadTableFromExcel(InputFile="data/workbook-xlsx.xlsx",TableID="testTable")
# Uncomment the line below to reproduce the expected results
# WriteTableToDelimitedFile(TableID="testTable",OutputFile="expected-results/test-WriteTableToExcel-ColumnsToExclude-out.csv",WriteIndexColumn="False",ColumnsToExclude="Int*,B*")
# Write the table to an Excel File. 
WriteTableToExcel(TableID="testTable",OutputFile="results/test-WriteTableToExcel-ColumnsToExclude-out.xlsx",OutputWorksheet="OutputSheet",WriteIndexColumn="False",ColumnsToExclude="Int*,B*")
# Read the written Excel File into the GeoProcesor as a Table. 
ReadTableFromExcel(InputFile="results/test-WriteTableToExcel-ColumnsToExclude-out.xlsx")
# Write the recently-written Table to a delimited file. 
WriteTableToDelimitedFile(TableID="OutputSheet",OutputFile="results/test-WriteTableToExcel-ColumnsToExclude-out.csv",WriteIndexColumn="False")
# Compare the results to the expceted results. 
CompareFiles(InputFile1="results/test-WriteTableToExcel-ColumnsToExclude-out.csv",InputFile2="expected-results/test-WriteTableToExcel-ColumnsToExclude-out.csv",IfDifferent="Warn")
