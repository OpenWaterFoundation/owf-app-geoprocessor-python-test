StartLog(LogFile="results/test-ReadTableFromDelimitedFile-text.gp.log")
#
# Test reading a Table from a delimited file. 
#	- delimited file is a text file
#	- delimiter is default (comma)
#
#
# Remove the result txt file, if existing
RemoveFile(SourceFile="results/test-ReadTableFromDelimitedFile-text-out.txt", IfSourceFileNotFound="Ignore")
# Read the text delimited file into the GeoProcessor 
ReadTableFromDelimitedFile(InputFile="data/table-textfile-comma.txt", TableID="testTable")
# Write the table to a delimited file.
WriteTableToDelimitedFile(TableID="testTable", OutputFile="results/test-ReadTableFromDelimitedFile-text-out.txt")
# Compare the results to the input file
CompareFiles(InputFile1="results/test-ReadTableFromDelimitedFile-text-out.txt", InputFile2="data/table-textfile-comma.txt", IfDifferent="Warn")