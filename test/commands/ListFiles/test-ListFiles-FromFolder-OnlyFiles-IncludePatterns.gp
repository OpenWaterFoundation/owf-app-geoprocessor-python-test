StartLog(LogFile="results/test-ListFiles-FromFolder-OnlyFiles-IncludePatterns.gp.log")
# Tests the functionality of the ListFiles command 
# - reads a local folder
# - lists only the files
# - IncludePatterns enabled
#
# Remove the text file from the last run of the test, if existing.
RemoveFile(SourceFile="results/test-ListFiles-FromFolder-OnlyFiles-IncludePatterns-out.txt",IfSourceFileNotFound="Ignore")
# List the files from a local folder. 
ListFiles(Folder="data",ListProperty="output-list-include",ListFolders="False",IncludePatterns="line*")
ListFiles(Folder="data",ListProperty="output-list-no-include",ListFolders="False")
# Write the list of files from the Property to a text file. 
WritePropertiesToFile(OutputFile="results/test-ListFiles-FromFolder-OnlyFiles-IncludePatterns-out.txt",IncludeProperties="output-list-include,output-list-no-include",FileFormat="NameValue",WriteMode="Overwrite")
# Uncomment the line below to recreate the expected results.
#WritePropertiesToFile(OutputFile="expected-results/test-ListFiles-FromFolder-OnlyFiles-IncludePatterns-out.txt",IncludeProperties="output-list-include,output-list-no-include",FileFormat="NameValue",WriteMode="Overwrite")
# Compare the results to the expected results.
CompareFiles(InputFile1="results/test-ListFiles-FromFolder-OnlyFiles-IncludePatterns-out.txt",InputFile2="expected-results/test-ListFiles-FromFolder-OnlyFiles-IncludePatterns-out.txt",IfDifferent="Warn")
