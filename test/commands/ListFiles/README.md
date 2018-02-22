# ListFiles Tests

|Test|Description|
|----|-----|
|`test-ListFiles-FromFolder`|Tests that the ListFiles command lists all of the files and folders within a local folder.|
|`test-ListFiles-FromFolder-FromURL-ExpectFailure`|Tests that a `FAILURE` is raised if `BOTH` the `Folder` and the `URL` are enabled.|
|`test-ListFiles-FromFolder-ListNone-ExpectWarning`|Tests that a `WARNING` is raised if `BOTH` the `ListFiles` and the `ListFolders` are set to `False`.|
|`test-ListFiles-FromFolder-OnlyFiles-IncludePatterns`|Tests that the ListFiles command lists all of the files within a local folder. Functionality of `IncludePatterns` optional parameter is tested.|
|`test-ListFiles-FromFolder-OnlyFolders-ExcludePatterns`|Tests that the ListFiles command lists all of the folders within a local folder. Functionality of `ExcludePatterns` optional parameter is tested.|