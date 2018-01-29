StartLog(LogFile="results/test-WebGet-DownloadableZipFile-KeepZipped.gp.log")
# Tests the functionality of the WebGet command with a file that is downloadable
#	- the file is a zip file
# 	- IfZipFile="KeepZipped"
# Remove the downloadable file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-WebGet-DownloadableZipFile-KeepZipped.zip", IfSourceFileNotFound="Ignore")
# Get the downloadable file from the web
WebGet(FileURL = "https://github.com/OpenWaterFoundation/owf-app-geoprocessor-python-test/blob/master/test/commands/WebGet/data/line_shp.zip?raw=true", OutputFile = "results/test-WebGet-DownloadableZipFile-KeepZipped", IfZipFile="KeepZipped")
# Compare the results to the original data
CompareFiles(InputFile1="results/test-WebGet-DownloadableZipFile-KeepZipped.zip", InputFile2="data/line_shp.zip", IfDifferent="Warn")