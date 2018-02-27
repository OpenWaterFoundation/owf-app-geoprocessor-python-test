StartLog(LogFile="results/test-ExtractFile-Tar.gp.log")
# Tests the functionality of the ExtractFile command 
#	- extracts a tar file
#
# Remove the text file from the last run of the test, if existing.
RemoveFile(SourceFile="results/test-ExtractFile-Tar-out.geojson", IfSourceFileNotFound="Ignore")
# Copy the original data file. 
CopyFile(SourceFile="data/line_geojson.tar", DestinationFile="results/test-ExtractFile-Tar-in.tar", IfSourceFileNotFound="Fail")
# Uncomment the next 3 lines to recreate the expected results.
#ExtractFile(File="results/test-ExtractFile-Tar-in.tar", FileType="tar", OutputFolder="expected-results", DeleteFile="False")
#CopyFile(SourceFile="expected-results/line.geojson", DestinationFile="expected-results/test-ExtractFile-Tar-out.geojson")
#RemoveFile(SourceFile="expected-results/line.geojson")
# Extract the copied tar file. 
ExtractFile(File="results/test-ExtractFile-Tar-in.tar", FileType="tar")
CopyFile(SourceFile="results/line.geojson", DestinationFile="results/test-ExtractFile-Tar-out.geojson")
RemoveFile(SourceFile="results/line.geojson")
# Compare the results to the expected results.
CompareFiles(InputFile1="results/test-ExtractFile-Tar-out.geojson", InputFile2="expected-results/test-ExtractFile-Tar-out.geojson", IfDifferent="Warn")