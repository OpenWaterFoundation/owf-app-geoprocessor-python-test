StartLog(LogFile="results/test-WebGet-DownloadableZipFile-UnzipAndRemove.gp.log")
# Tests the functionality of the WebGet command with a file that is downloadable
#	- the file is a zip file
# 	- IfZipFile="UnzipAndRemove"
# Remove the downloadable file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-WebGet-DownloadableZipFile-UnzipAndRemove.geojson", IfSourceFileNotFound="Ignore")
# Uncomment the line below to recreate the expected results
#WebGet(FileURL = "https://github.com/OpenWaterFoundation/owf-app-geoprocessor-python-test/blob/master/test/commands/WebGet/data/line_geojson.zip?raw=true", OutputFile = "expected-results/test-WebGet-DownloadableZipFile-UnzipAndRemove", IfZipFile="UnzipAndRemove")
# Get the downloadable file from the web
WebGet(FileURL = "https://github.com/OpenWaterFoundation/owf-app-geoprocessor-python-test/blob/master/test/commands/WebGet/data/line_geojson.zip?raw=true", OutputFile = "results/test-WebGet-DownloadableZipFile-UnzipAndRemove", IfZipFile="UnzipAndRemove")
# Compare the results to the original data
CompareFiles(InputFile1="results/test-WebGet-DownloadableZipFile-UnzipAndRemove.geojson", InputFile2="expected-results/test-WebGet-DownloadableZipFile-UnzipAndRemove.geojson", IfDifferent="Warn")