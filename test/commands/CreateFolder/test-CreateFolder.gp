StartLog(LogFile="results/test-CreateFolder.gp.log")
# Test creating a folder:
# - create the folder once, ignoring if it exists
# - then crete again and warn if exists
#@expectedStatus Warning
CreateFolder(Folder="results/folder",IfFolderExists="Ignore")
CreateFolder(Folder="results/folder")
# TODO smalers 2020-07-17 need a way to test for success.