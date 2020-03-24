StartLog(LogFile="results/test-WebGet-DownloadableFile.gp.log")
# Tests the functionality of the WebGet command with a file that is downloadable
# - the file is not a zip file
# Remove the downloadable file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-WebGet-DownloadableFile.geojson",IfSourceFileNotFound="Ignore")
# Get the downloadable file from the web
WebGet(URL="https://raw.githubusercontent.com/OpenWaterFoundation/owf-app-geoprocessor-python-test/master/test/commands/WebGet/data/line.geojson",OutputFile="results/test-WebGet-DownloadableFile.geojson")
# The following WebGet command (defaulted to be commented out) throws the following error:
# SSLError: [Errno 1] _ssl.c:504: error:1407742E:SSL routines:SSL23_GET_SERVER_HELLO:tlsv1 alert protocol version 
#WebGet(URL="https://github.com/OpenWaterFoundation/owf-app-geoprocessor-python-test/blob/master/test/commands/WebGet/data/line.geojson",OutputFile="results/test-WebGet-DownloadableFile.geojson")
# Compare the results to the original data
CompareFiles(InputFile1="results/test-WebGet-DownloadableFile.geojson",InputFile2="data/line.geojson",IfDifferent="Warn")
