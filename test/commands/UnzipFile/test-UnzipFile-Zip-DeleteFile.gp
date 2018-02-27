StartLog(LogFile="results/test-UnzipFile-Zip-DeleteFile.gp.log")
# Tests the functionality of the UnzipFile command 
#	- extracts a zip file
# 	- testing DeleteFile parameter
# 	- the extracted zip file is not deleted
#
# Remove the text file from the last run of the test, if existing.
RemoveFile(SourceFile="results/test-UnzipFile-Zip-DeleteFile-out.geojson", IfSourceFileNotFound="Ignore")
# Copy the original data file. 
CopyFile(SourceFile="data/line_geojson.zip", DestinationFile="results/test-UnzipFile-Zip-DeleteFile-in.zip", IfSourceFileNotFound="Fail")
# Uncomment the next 3 lines to recreate the expected results.
#UnzipFile(File="results/test-UnzipFile-Zip-DeleteFile-in.zip", OutputFolder="expected-results", DeleteFile="False")
#CopyFile(SourceFile="expected-results/line.geojson", DestinationFile="expected-results/test-UnzipFile-Zip-DeleteFile-out.geojson")
#RemoveFile(SourceFile="expected-results/line.geojson")
# Extract the copied zip file. 
UnzipFile(File="results/test-UnzipFile-Zip-DeleteFile-in.zip", DeleteFile="False")
CopyFile(SourceFile="results/line.geojson", DestinationFile="results/test-UnzipFile-Zip-DeleteFile-out.geojson")
RemoveFile(SourceFile="results/line.geojson")
CopyFile(SourceFile="results/test-UnzipFile-Zip-DeleteFile-in.zip", DestinationFile="results/test-UnzipFile-Zip-DeleteFile-out.zip")
RemoveFile(SourceFile="results/test-UnzipFile-Zip-DeleteFile-in.zip")
# Compare the results to the expected results.
CompareFiles(InputFile1="results/test-UnzipFile-Zip-DeleteFile-out.geojson", InputFile2="expected-results/test-UnzipFile-Zip-DeleteFile-out.geojson", IfDifferent="Warn")
CompareFiles(InputFile1="results/test-UnzipFile-Zip-DeleteFile-out.zip", InputFile2="data/line_geojson.zip", IfDifferent="Warn")