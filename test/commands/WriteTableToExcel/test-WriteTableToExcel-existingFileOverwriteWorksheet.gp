StartLog(LogFile="results/test-WriteTableToExcel-existingFileOverwriteWorksheet.gp.log")
#
# Test writing a Table to a delimited file. 
#	- write to an existing Excel file 
#	- overwrite an existing sheet with the new table data 
#
#
# Remove the dynamic files from the last run of the test, if existing.
RemoveFile(SourceFile="results/test-WriteTableToExcel-existingFileOverwriteWorksheet-out.xlsx", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-WriteTableToExcel-existingFileOverwriteWorksheet-Sheet1-out.csv", IfSourceFileNotFound="Ignore")
# Copy the existing excel file to the results folder. 
CopyFile(SourceFile="data/existing-workbook.xlsx", DestinationFile="results/test-WriteTableToExcel-existingFileOverwriteWorksheet-out.xlsx")
# Read the first worksheet of the INPUT workbook. TableID: input-workbook-worksheet-1-preprocess
ReadTableFromExcel(InputFile="data/workbook-xlsx.xlsx", TableID="input-workbook-worksheet-1-preprocess")
# Uncomment the next line to reproduce the expected results
#WriteTableToDelimitedFile(TableID="input-workbook-worksheet-1-preprocess", OutputFile="expected-results/test-WriteTableToExcel-existingFileOverwriteWorksheet-Sheet1-out.csv", WriteIndexColumn="False")
# Write the input-workbook-worksheet-1-preprocess table to the existing workbook. Overwrite the ExistingSheet worksheet. 
WriteTableToExcel(TableID="input-workbook-worksheet-1-preprocess", OutputFile="results/test-WriteTableToExcel-existingFileOverwriteWorksheet-out.xlsx", OutputWorksheet="ExistingSheet", WriteIndexColumn="False")
# Read the first sheet of the existing workbook TableID: existing-workbook-worksheet-1-postprocess
ReadTableFromExcel(InputFile="results/test-WriteTableToExcel-existingFileOverwriteWorksheet-out.xlsx", Worksheet="ExistingSheet", TableID="existing-workbook-worksheet-1-postprocess")
# Write the existing-workbook-worksheet-1-postprocess to a delimited file 
WriteTableToDelimitedFile(TableID="existing-workbook-worksheet-1-postprocess", OutputFile="results/test-WriteTableToExcel-existingFileOverwriteWorksheet-Sheet1-out.csv", WriteIndexColumn="False")
# Compare the results/existing-workbook-worksheet-1-postprocess to the expected-results/existing-workbook-worksheet-1-preprocess
CompareFiles(InputFile1="results/test-WriteTableToExcel-existingFileOverwriteWorksheet-Sheet1-out.csv", InputFile2="expected-results/test-WriteTableToExcel-existingFileOverwriteWorksheet-Sheet1-out.csv", IfDifferent="Warn")

