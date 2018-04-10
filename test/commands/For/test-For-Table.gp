StartLog(LogFile="results/test-For-Table.gp.log")
#
# Test For loop
# - Iterate over the rows in a Table
#
# 
# Uncomment the following command to regenerate expected results file --> have to remove expected results since appending
#RemoveFile(SourceFile="expected-results/test-For-Table-out.txt",IfSourceFileNotFound="Ignore")
# Remove dynamic files from last test, if existing
RemoveFile(SourceFile="results/test-For-Table-out.txt",IfSourceFileNotFound="Ignore")
# Read the input table from a delimited file
ReadTableFromDelimitedFile(InputFile="data/input-table.csv", TableID="test-table")
# Iterate over the table
For(Name="ForTable", IteratorProperty="Date", TableID="test-table", TableColumn="Day", TablePropertyMap="Color:Color,Fruit:Fruit Variety")
	# Uncomment the following command to regenerate the expected results file (AND SEE OTHER COMMAND ABOVE)
	#WritePropertiesToFile(OutputFile="expected-results/test-For-Table-out.txt", IncludeProperties="Date,Color,Fruit Variety",WriteMode="Append")
	# Generate new output...
	WritePropertiesToFile(OutputFile="results/test-For-Table-out.txt", IncludeProperties="Date,Color,Fruit Variety",WriteMode="Append")
EndFor(Name="ForTable")
# Do regression comparison...
CompareFiles(InputFile1="expected-results/test-For-Table-out.txt", InputFile2="results/test-For-Table-out.txt", IfDifferent="Warn")