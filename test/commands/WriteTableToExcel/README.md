# WriteTableToDelimitedFile Tests

|Test|Description|
|----|-----|
|`test-WriteTableToDelimitedFile-csv`|Tests that a Table is written to a delimited file in `CSV` format with default delimiter value of `,` (*comma*).|
|`test-WriteTableToDelimitedFile-Delimiter`|Tests the functionality of the optional `DELIMITER` parameter. Writes a table to a delimited file in `TEXT` format with delimiter value of `;` (*semicolon*).|
|`test-WriteTableToDelimitedFile-ExcludeHeader`|Tests the funcitonality of the optional `WRITEHEADERROW` parameter. Writes a table to a delimited file in `CSV` format but excludes the column names (the header row).|
|`test-WriteTableToDelimitedFile-ExcludeIndex`|Tests the funcitonality of the optional `WRITEINDEXCOLUMN` parameter. Writes a table to a delimited file in `CSV` format but excludes the index column.|
|`test-WriteTableToDelimitedFile-InvalidDelimiter-ExpectFail`|Test that a `FAILURE` is raised if the user attempts to use a delimiter that is more than 1 character.|
|`test-WriteTableToDelimitedFile-InvalidWriteHeaderRow-ExpectFail`|Test that a `FAILURE` is raised if the user attempts to enter a non-boolean value for the `WriteHeaderRow` parameter.|
|`test-WriteTableToDelimitedFile-InvalidWriteIndexColumn-ExpectFail`|Test that a `FAILURE` is raised if the user attempts to enter a non-boolean value for the `WriteIndexColumn` parameter.|
|`test-WriteTableToDelimitedFile-txt`|Tests that a Table is written to a delimited file in `TEXT` format with default delimiter value of `,` (*comma*).|