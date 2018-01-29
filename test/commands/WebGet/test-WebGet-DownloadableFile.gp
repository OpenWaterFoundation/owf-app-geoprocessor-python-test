StartLog(LogFile="results/test-WebGet-DownloadableFile.gp.log")
# Tests the functionality of the WebGet command with a file that is downloadable
#	- the file is not a zip file
# Remove the downloadable file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-WebGet-DownloadableFile.geojson", IfSourceFileNotFound="Ignore")
# Get the downloadable file from the web
WebGet(FileURL = "https://raw.githubusercontent.com/OpenWaterFoundation/owf-app-geoprocessor-python-test/master/test/commands/WebGet/data/line.geojson", OutputFile="results/test-WebGet-DownloadableFile.geojson")
# Compare the results to the original data
CompareFiles(InputFile1="results/test-WebGet-DownloadableFile.geojson", InputFile2="data/line.geojson", IfDifferent="Warn")