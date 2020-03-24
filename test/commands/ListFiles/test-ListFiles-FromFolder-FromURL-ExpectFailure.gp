StartLog(LogFile="results/test-ListFiles-FromFolder-FromURL-ExpectFailure.gp.log")
# Tests the functionality of the ListFiles command 
# - attempts to read a local folder and a URL
# - configured to not read the files or folders
# - command should not run because it cannot read both input types on a single command line
#
#@expectedStatus Failure
# List the files and folders from a local folder. 
ListFiles(Folder="data",URL="data",ListProperty="output-list")
