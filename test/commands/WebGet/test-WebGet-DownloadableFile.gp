StartLog(LogFile="results/test-WebGet-DownloadableFile.gp.log")
# Tests the functionality of the WebGet command with a file that is downloadable
#	- the file is not a zip file
# Uncomment below line to recreate the data in the data folder
#WebGet(FileURL = "https://rmgsc.cr.usgs.gov/outgoing/GeoMAC/2015_fire_data/Florida/Mystery_Hammock_Wf/fl_mystery_hammock_wf_20150817_0000_dd83.cpg", OutputFile = "data/test-WebGet-DownloadableFile-data")
# Remove the downloadable file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-WebGet-DownloadableFile-out.cpg", IfSourceFileNotFound="Ignore")
# Get the downloadable file from the web
WebGet(FileURL = "https://rmgsc.cr.usgs.gov/outgoing/GeoMAC/2015_fire_data/Florida/Mystery_Hammock_Wf/fl_mystery_hammock_wf_20150817_0000_dd83.cpg", OutputFile = "results/test-WebGet-DownloadableFile-out")
# Compare the results to the original data
CompareFiles(InputFile1="results/test-WebGet-DownloadableFile-out.cpg", InputFile2="data/test-WebGet-DownloadableFile-data.cpg", IfDifferent="Warn")