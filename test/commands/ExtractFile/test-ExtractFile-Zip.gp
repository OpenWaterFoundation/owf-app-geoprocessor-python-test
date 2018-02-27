StartLog(LogFile="results/test-ExtractFile-Zip.gp.log")
# Tests the functionality of the ExtractFile command 
#	- extracts a zip file
# 	- all default parameters
#
# Remove the text file from the last run of the test, if existing.
RemoveFile(SourceFile="results/test-ExtractFile-Zip-out.geojson", IfSourceFileNotFound="Ignore")
# Copy the original data file. 
CopyFile(SourceFile="data/line_geojson.zip", DestinationFile="results/test-ExtractFile-Zip-in.zip", IfSourceFileNotFound="Fail")
# Uncomment the next 3 lines to recreate the expected results.
#ExtractFile(File="results/test-ExtractFile-Zip-in.zip", OutputFolder="expected-results", DeleteFile="False")
#CopyFile(SourceFile="expected-results/line.geojson", DestinationFile="expected-results/test-ExtractFile-Zip-out.geojson")
#RemoveFile(SourceFile="expected-results/line.geojson")
# Extract the copied zip file. 
ExtractFile(File="results/test-ExtractFile-Zip-in.zip")
CopyFile(SourceFile="results/line.geojson", DestinationFile="results/test-ExtractFile-Zip-out.geojson")
RemoveFile(SourceFile="results/line.geojson")
# Compare the results to the expected results.
CompareFiles(InputFile1="results/test-ExtractFile-Zip-out.geojson", InputFile2="expected-results/test-ExtractFile-Zip-out.geojson", IfDifferent="Warn")