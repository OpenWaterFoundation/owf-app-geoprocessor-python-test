StartLog(LogFile="results/test-ListFiles-FromFolder-OnlyFolders-ExcludePatterns.gp.log")
# Tests the functionality of the ListFiles command 
# - reads a local folder
# - lists only the folders
# - ExcludePatterns enabled
#
# Remove the text file from the last run of the test, if existing.
RemoveFile(SourceFile="results/test-ListFiles-FromFolder-OnlyFolders-ExcludePatterns-out.txt",IfSourceFileNotFound="Ignore")
# List the folders from a local folder. 
ListFiles(Folder="data",ListProperty="output-list-exclude",ListFiles="False",ExcludePatterns="test*")
ListFiles(Folder="data",ListProperty="output-list-no-exclude",ListFiles="False")
# Write the list of folders from the Property to a text file. 
WritePropertiesToFile(OutputFile="results/test-ListFiles-FromFolder-OnlyFolders-ExcludePatterns-out.txt",IncludeProperties="output-list-exclude,output-list-no-exclude",FileFormat="NameValue",WriteMode="Overwrite")
# Uncomment the line below to recreate the expected results.
#WritePropertiesToFile(OutputFile="expected-results/test-ListFiles-FromFolder-OnlyFolders-ExcludePatterns-out.txt",IncludeProperties="output-list-exclude,output-list-no-exclude",FileFormat="NameValue",WriteMode="Overwrite")
# Compare the results to the expected results.
CompareFiles(InputFile1="results/test-ListFiles-FromFolder-OnlyFolders-ExcludePatterns-out.txt",InputFile2="expected-results/test-ListFiles-FromFolder-OnlyFolders-ExcludePatterns-out.txt",IfDifferent="Warn")
