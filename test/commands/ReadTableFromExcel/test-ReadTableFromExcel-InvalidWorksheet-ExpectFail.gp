StartLog(LogFile="results/test-ReadTableFromExcel-InvalidWorksheet-ExpectFail.gp.log")
#
# Test reading a Table from an Excel file. 
#	- Test that a `FAILURE` is raised when the `WORKSHEET` parameter is not a valid worksheet
#
#@expectedStatus Failure
#
# Read the excel workbook/worksheet into the GeoProcessor. Should throw error.
ReadTableFromExcel(InputFile="data/workbook-xlsx.xlsx", Worksheet="InvalidSheet")