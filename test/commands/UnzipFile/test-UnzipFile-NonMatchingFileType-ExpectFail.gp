StartLog(LogFile="results/test-UnzipFile-NonMatchingFileType-ExpectFail.gp.log")
# Tests the functionality of the UnzipFile command 
#	- failure should occur when the actual File type and the input FileType parameter value do not match
#	- file is a .zip and the FileType parameter value is TAR
#
#@expectedStatus Failure
#
# Copy the original data file. 
CopyFile(SourceFile="data/test-file.txt", DestinationFile="results/test-UnzipFile-NonMatchingFileType-ExpectFail-in.zip", IfSourceFileNotFound="Fail")
RemoveFile(SourceFile="results/test-UnzipFile-NonMatchingFileType-ExpectFail-in.zip")
# Extract the copied zip file. 
UnzipFile(File="results/test-UnzipFile-NonMatchingFileType-ExpectFail-in.zip", FileType="tar")