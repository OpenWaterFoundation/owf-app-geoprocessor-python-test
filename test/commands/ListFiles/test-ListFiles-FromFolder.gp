StartLog(LogFile="results/test-ListFiles-FromFolder.gp.log")
# Tests the functionality of the ListFiles command 
#	- reads a local folder
#	- lists both the files and the folders
#	- default include and exclude patterns
#
# Remove the text file from the last run of the test, if existing.
RemoveFile(SourceFile="results/test-ListFiles-FromFolder-out.txt", IfSourceFileNotFound="Ignore")
# List the files and folders from a local folder. 
ListFiles(Folder="data", ListProperty="output-list")
# Write the list of files and folders from the Property to a text file. 
WritePropertiesToFile(OutputFile="results/test-ListFiles-FromFolder-out.txt", IncludeProperties="output-list" ,FileFormat="NameValue", WriteMode="Overwrite")
# Uncomment the line below to recreate the expected results.
#WritePropertiesToFile(OutputFile="expected-results/test-ListFiles-FromFolder-out.txt",IncludeProperties="output-list",FileFormat="NameValue",WriteMode="Overwrite")
# Compare the results to the expected results.
CompareFiles(InputFile1="results/test-ListFiles-FromFolder-out.txt", InputFile2="expected-results/test-ListFiles-FromFolder-out.txt", IfDifferent="Warn")