# ReadTableFromExcel Tests

|Test|Description|
|----|-----|
|`test-ReadTableFromExcel-InvalidWorksheet-ExpectFail`|Tests that a `FAILURE` is raised if the user attempts to read a worksheet that is not available.|
|`test-ReadTableFromExcel-TableID`|Tests that the `TableID` parameter functions as expected.|
|`test-ReadTableFromExcel-Worksheet`|Tests that the `Worksheet` parameter functions as expected.|
|`test-ReadTableFromExcel-xls`|Tests that a Table is read from an Excel file (`.xls` extension).|
|`test-ReadTableFromExcel-xlsx`|Tests that a Table is read from an Excel file (`.xlsx` extension).|