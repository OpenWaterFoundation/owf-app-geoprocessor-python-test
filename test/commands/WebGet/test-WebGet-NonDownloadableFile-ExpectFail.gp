StartLog(LogFile="results/test-WebGet-NonDownloadableFile-ExpectFail.gp.log")
# Tests the functionality of the WebGet command with a file that is not downloadable.
#	- the file is not a zip file
# 	- becuase the FileURL does not point to a file that can be downloaded, the test SHOULD FAIL when trying to download it with the WebGet command
#	- the test will pass globally if it fails locally
# Remove the downloadable file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-WebGet-NonDownloadableFile-ExpectFail-out.cpg", IfSourceFileNotFound="Ignore")
# Get the downloadable file from the web
WebGet(FileURL = "https://rmgsc.cr.usgs.gov/outgoing/GeoMAC/2015_fire_data/Florida/FalseFolder/Mystery_Hammock_Wf/fl_mystery_hammock_wf_20150817_0000_dd83.cpg", OutputFile = "results/test-WebGet-NonDownloadableFile-ExpectFail-out")