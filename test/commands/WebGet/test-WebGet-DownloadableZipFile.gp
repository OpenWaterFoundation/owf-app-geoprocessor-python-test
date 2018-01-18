StartLog(LogFile="results/test-WebGet-DownloadableZipFile.gp.log")
# Tests the functionality of the WebGet command with a file that is downloadable
#	- the file is a zip file
# 	- IfZipFile="KeepZipped"
# Uncomment below line to recreate the data in the data folder
#WebGet(FileURL="https://rmgsc.cr.usgs.gov/outgoing/GeoMAC/2015_fire_data/Florida/Mystery_Hammock_Wf/fl_mystery_hammock_wf_20150817_0000_dd83.zip", OutputFile="data/test-WebGet-DownloadableZipFile-data", IfZipFile="KeepZipped")
# Remove the downloadable file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-WebGet-DownloadableZipFile-out.zip", IfSourceFileNotFound="Ignore")
# Get the downloadable file from the web
WebGet(FileURL = "https://rmgsc.cr.usgs.gov/outgoing/GeoMAC/2015_fire_data/Florida/Mystery_Hammock_Wf/fl_mystery_hammock_wf_20150817_0000_dd83.zip", OutputFile = "results/test-WebGet-DownloadableZipFile-out", IfZipFile="KeepZipped")
# Compare the results to the original data
CompareFiles(InputFile1="results/test-WebGet-DownloadableZipFile-out.zip", InputFile2="data/test-WebGet-DownloadableZipFile-data.zip", IfDifferent="Warn")