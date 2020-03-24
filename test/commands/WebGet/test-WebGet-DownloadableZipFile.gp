StartLog(LogFile="results/test-WebGet-DownloadableZipFile.gp.log")
# Tests the functionality of the WebGet command with a file that is downloadable
#	- the file is a zip file
#	- currently disabled because a SSL connection error occurs when downloading a zip file from GitHub. Downloading a zip file from other sites work (example GeoMAC fire data).
#@enabled false
#
#
# Remove the downloadable file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-WebGet-DownloadableZipFile.zip",IfSourceFileNotFound="Ignore")
# Get the downloadable file from the web
WebGet(URL="https://github.com/OpenWaterFoundation/owf-app-geoprocessor-python-test/blob/master/test/commands/WebGet/data/line_shp.zip?raw=true",OutputFile="results/test-WebGet-DownloadableZipFile")
# Compare the results to the original data
CompareFiles(InputFile1="results/test-WebGet-DownloadableZipFile.zip",InputFile2="data/line_shp.zip",IfDifferent="Warn")
