StartLog(LogFile="results/test-UnzipFile-Txt-ExpectFail.gp.log")
# Tests the functionality of the UnzipFile command 
#	- failure should occur when the File is not a compatible file type to be unzipped
#	- txt files cannot be unzipped
#
#@expectedStatus Failure
#
# Copy the original data file. 
CopyFile(SourceFile="data/test-file.txt", DestinationFile="results/test-UnzipFile-Txt-ExpectFail-in.txt", IfSourceFileNotFound="Fail")
RemoveFile(SourceFile="results/test-UnzipFile-Txt-ExpectFail-in.txt")
# Extract the copied zip file. 
UnzipFile(File="results/test-UnzipFile-Txt-ExpectFail-in.txt")