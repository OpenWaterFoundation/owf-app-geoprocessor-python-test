# WriteTableToDelimitedFile Tests

|Test|Description|
|----|-----|
|`test-WriteTableToDelimitedFile-ColumnsToExclude`|Tests the funcitonality of the optional `COLUMNSTOEXCLUDE` parameter. Writes a table to a delimited file in `CSV` format but excludes a subset of the columns.|
|`test-WriteTableToDelimitedFile-ColumnsToInclude`|Tests the funcitonality of the optional `COLUMNSTOINCLUDE` parameter. Writes a table to a delimited file in `CSV` format and only includes a subset of the columns.|
|`test-WriteTableToDelimitedFile-csv`|Tests that a Table is written to a delimited file in `CSV` format with default delimiter value of `,` (*comma*).|
|`test-WriteTableToDelimitedFile-Delimiter`|Tests the functionality of the optional `DELIMITER` parameter. Writes a table to a delimited file in `TEXT` format with delimiter value of `;` (*semicolon*).|
|`test-WriteTableToDelimitedFile-ExcludeIndex`|Tests the funcitonality of the optional `WRITEINDEXCOLUMN` parameter. Writes a table to a delimited file in `CSV` format but excludes the index column.|
|`test-WriteTableToDelimitedFile-InvalidDelimiter-ExpectFail`|Test that a `FAILURE` is raised if the user attempts to use a delimiter that is more than 1 character.|
|`test-WriteTableToDelimitedFile-InvalidWriteIndexColumn-ExpectFail`|Test that a `FAILURE` is raised if the user attempts to enter a non-boolean value for the `WriteIndexColumn` parameter.|
|`test-WriteTableToDelimitedFile-txt`|Tests that a Table is written to a delimited file in `TEXT` format with default delimiter value of `,` (*comma*).|