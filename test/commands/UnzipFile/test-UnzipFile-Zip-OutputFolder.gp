StartLog(LogFile="results/test-UnzipFile-Zip-OutputFolder.gp.log")
# Tests the functionality of the UnzipFile command 
#	- extracts a zip file
#	- testing OutputFolder parameter
# 	- archived files are moved to folder other than the default parent folder
#
# Remove the text file from the last run of the test, if existing.
RemoveFile(SourceFile="results/test-UnzipFile-Zip-OutputFolder-out.geojson", IfSourceFileNotFound="Ignore")
# Copy the original data file. 
CopyFile(SourceFile="data/line_geojson.zip", DestinationFile="results/test-UnzipFile-Zip-OutputFolder-in.zip", IfSourceFileNotFound="Fail")
# Uncomment the next 3 lines to recreate the expected results.
#UnzipFile(File="results/test-UnzipFile-Zip-OutputFolder-in.zip", OutputFolder="expected-results", DeleteFile="False")
#CopyFile(SourceFile="expected-results/line.geojson", DestinationFile="expected-results/test-UnzipFile-Zip-OutputFolder-out.geojson")
#RemoveFile(SourceFile="expected-results/line.geojson")
# Extract the copied zip file. 
UnzipFile(File="results/test-UnzipFile-Zip-OutputFolder-in.zip", OutputFolder="results/test-folder")
CopyFile(SourceFile="results/test-folder/line.geojson", DestinationFile="results/test-folder/test-UnzipFile-Zip-OutputFolder-out.geojson")
RemoveFile(SourceFile="results/test-folder/line.geojson")
# Compare the results to the expected results.
CompareFiles(InputFile1="results/test-folder/test-UnzipFile-Zip-OutputFolder-out.geojson", InputFile2="expected-results/test-UnzipFile-Zip-OutputFolder-out.geojson", IfDifferent="Warn")