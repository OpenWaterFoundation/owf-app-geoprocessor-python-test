# UnzipFile Tests

|Test|Description|
|----|-----|
|`test-UnzipFile-NonMatchingFileType-ExpectFail`|Tests that the UnzipFile command throws a `FAILURE` if the `FileType` parameter value does not match the file.|
|`test-UnzipFile-Tar`|Tests that the UnzipFile command extracts a `TAR` file.|Tests that the UnzipFile command extracts a `TAR` file. |
|`test-UnzipFile-Txt-ExpectFail`|Tests that the UnzipFile command throws a `FAILURE` if the `File` is not a compatible file to unzip with the UnzipFile command. The file type used in this test is a `.txt` file - text files cannot be unzipped.|
|`test-UnzipFile-Zip`|Tests that the UnzipFile command extracts a `ZIP` file. All optional parameters are set to `DEFAULT`.|
|`test-UnzipFile-Zip-OutputFolder`|Tests that the `OutputFolder` parameter of the UnzipFile command functions as expected. The `OutputFolder` parameter is set to `results/test-folder`.|
