StartLog(LogFile="results/test-WriteTableToExcel-existingFileNewWorksheet.gp.log")
#
# Test writing a Table to a delimited file. 
#	- write to an existing Excel file 
#	- add a new worksheet to the Excel file 
#
#
# Remove the dynamic files from the last run of the test, if existing.
RemoveFile(SourceFile="results/test-WriteTableToExcel-existingFileNewWorksheet-out.xlsx", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-WriteTableToExcel-existingFileNewWorksheet-Sheet1-out.csv", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-WriteTableToExcel-existingFileNewWorksheet-Sheet2-out.csv", IfSourceFileNotFound="Ignore")
# Copy the existing excel file to the results folder. 
CopyFile(SourceFile="data/existing-workbook.xlsx", DestinationFile="results/test-WriteTableToExcel-existingFileNewWorksheet-out.xlsx")
# Read the first worksheet of the EXISTING workbook. TableID: existing-workbook-worksheet-1-preprocess
ReadTableFromExcel(InputFile="data/existing-workbook.xlsx", TableID="existing-workbook-worksheet-1-preprocess")
# Read the first worksheet of the INPUT workbook. TableID: input-workbook-worksheet-1-preprocess
ReadTableFromExcel(InputFile="data/workbook-xlsx.xlsx", TableID="input-workbook-worksheet-1-preprocess")
# Uncomment the next two lines to reproduce the expected results
#WriteTableToDelimitedFile(TableID="existing-workbook-worksheet-1-preprocess", OutputFile="expected-results/test-WriteTableToExcel-existingFileNewWorksheet-Sheet1-out.csv", WriteIndexColumn="False")
#WriteTableToDelimitedFile(TableID="input-workbook-worksheet-1-preprocess", OutputFile="expected-results/test-WriteTableToExcel-existingFileNewWorksheet-Sheet2-out.csv", WriteIndexColumn="False")
# Write the input-workbook-worksheet-1-preprocess table to the existing workbook. Create a new worksheet. 
WriteTableToExcel(TableID="input-workbook-worksheet-1-preprocess", OutputFile="results/test-WriteTableToExcel-existingFileNewWorksheet-out.xlsx", OutputWorksheet="OutputSheet", WriteIndexColumn="False")
# Read the first sheet of the existing workbook TableID: existing-workbook-worksheet-1-postprocess
ReadTableFromExcel(InputFile="results/test-WriteTableToExcel-existingFileNewWorksheet-out.xlsx", Worksheet="ExistingSheet", TableID="existing-workbook-worksheet-1-postprocess")
# Read the second sheet of the existing workbook TableID: existing-workbook-worksheet-2-postprocess
ReadTableFromExcel(InputFile="results/test-WriteTableToExcel-existingFileNewWorksheet-out.xlsx", Worksheet="OutputSheet", TableID="existing-workbook-worksheet-2-postprocess")
# Write the existing-workbook-worksheet-1-postprocess to a delimited file 
WriteTableToDelimitedFile(TableID="existing-workbook-worksheet-1-postprocess", OutputFile="results/test-WriteTableToExcel-existingFileNewWorksheet-Sheet1-out.csv", WriteIndexColumn="False")
# Write the existing-workbook-worksheet-2-postprocess to a delimited file
WriteTableToDelimitedFile(TableID="existing-workbook-worksheet-2-postprocess", OutputFile="results/test-WriteTableToExcel-existingFileNewWorksheet-Sheet2-out.csv", WriteIndexColumn="False")
# Compare the results/existing-workbook-worksheet-1-postprocess to the expected-results/existing-workbook-worksheet-1-preprocess
CompareFiles(InputFile1="results/test-WriteTableToExcel-existingFileNewWorksheet-Sheet1-out.csv", InputFile2="expected-results/test-WriteTableToExcel-existingFileNewWorksheet-Sheet1-out.csv", IfDifferent="Warn")
# Compare the results/existing-workbook-worksheet-2-postprocess to the expected-results/input-workbook-worksheet-1-preprocess
CompareFiles(InputFile1="results/test-WriteTableToExcel-existingFileNewWorksheet-Sheet2-out.csv", InputFile2="expected-results/test-WriteTableToExcel-existingFileNewWorksheet-Sheet2-out.csv", IfDifferent="Warn")
