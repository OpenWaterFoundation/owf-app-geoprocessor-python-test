StartLog(LogFile="results/test-UnzipFile-Zip.gp.log")
# Tests the functionality of the UnzipFile command 
# - extracts a zip file
# - all default parameters
#
# Remove the text file from the last run of the test, if existing.
RemoveFile(SourceFile="results/test-UnzipFile-Zip-out.geojson",IfSourceFileNotFound="Ignore")
# Copy the original data file. 
CopyFile(SourceFile="data/line_geojson.zip",DestinationFile="results/test-UnzipFile-Zip-in.zip",IfSourceFileNotFound="Fail")
# Uncomment the next 3 lines to recreate the expected results.
#UnzipFile(File="results/test-UnzipFile-Zip-in.zip",OutputFolder="expected-results")
#CopyFile(SourceFile="expected-results/line.geojson",DestinationFile="expected-results/test-UnzipFile-Zip-out.geojson")
#RemoveFile(SourceFile="expected-results/line.geojson")
# Extract the copied zip file. 
UnzipFile(File="results/test-UnzipFile-Zip-in.zip")
CopyFile(SourceFile="results/line.geojson",DestinationFile="results/test-UnzipFile-Zip-out.geojson")
RemoveFile(SourceFile="results/line.geojson")
CopyFile(SourceFile="results/test-UnzipFile-Zip-in.zip",DestinationFile="results/test-UnzipFile-Zip-out.zip")
RemoveFile(SourceFile="results/test-UnzipFile-Zip-in.zip")
# Compare the results to the expected results.
CompareFiles(InputFile1="results/test-UnzipFile-Zip-out.geojson",InputFile2="expected-results/test-UnzipFile-Zip-out.geojson",IfDifferent="Warn")
CompareFiles(InputFile1="results/test-UnzipFile-Zip-out.zip",InputFile2="data/line_geojson.zip",IfDifferent="Warn")
