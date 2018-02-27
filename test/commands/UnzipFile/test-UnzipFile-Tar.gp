StartLog(LogFile="results/test-UnzipFile-Tar.gp.log")
# Tests the functionality of the UnzipFile command 
#	- extracts a tar file
#
# Remove the text file from the last run of the test, if existing.
RemoveFile(SourceFile="results/test-UnzipFile-Tar-out.geojson", IfSourceFileNotFound="Ignore")
# Copy the original data file. 
CopyFile(SourceFile="data/line_geojson.tar", DestinationFile="results/test-UnzipFile-Tar-in.tar", IfSourceFileNotFound="Fail")
# Uncomment the next 3 lines to recreate the expected results.
#UnzipFile(File="results/test-UnzipFile-Tar-in.tar", FileType="tar", OutputFolder="expected-results", DeleteFile="False")
#CopyFile(SourceFile="expected-results/line.geojson", DestinationFile="expected-results/test-UnzipFile-Tar-out.geojson")
#RemoveFile(SourceFile="expected-results/line.geojson")
# Extract the copied tar file. 
UnzipFile(File="results/test-UnzipFile-Tar-in.tar", FileType="tar")
CopyFile(SourceFile="results/line.geojson", DestinationFile="results/test-UnzipFile-Tar-out.geojson")
RemoveFile(SourceFile="results/line.geojson")
# Compare the results to the expected results.
CompareFiles(InputFile1="results/test-UnzipFile-Tar-out.geojson", InputFile2="expected-results/test-UnzipFile-Tar-out.geojson", IfDifferent="Warn")