# WriteTableToExcel Tests

|Test|Description|
|----|-----|
|`test-WriteTableToExcel-ColumnsToExclude`|Tests the functionality of the optional `ColumnsToExclude` parameter. A subset of the columns should be excluded.|
|`test-WriteTableToExcel-ColumnsToInclude`|Tests the functionality of the optional `ColumnsToInclude` parameter. Only a subset of the columns should be included.|
|`test-WriteTableToExcel-existingFileNewWorksheet`|Tests that a Table is written to an existing Excel file (the table is added as a new worksheet).|
|`test-WriteTableToExcel-existingFileOverwriteWorksheet`|Tests that a Table is written to an existing Excel file (the table overwrites an existing worksheet).|
|`test-WriteTableToExcel-newFile`|Tests that a Table is written to a new Excel file.|
