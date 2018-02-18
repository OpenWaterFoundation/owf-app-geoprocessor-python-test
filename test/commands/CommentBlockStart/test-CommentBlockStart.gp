StartLog(LogFile="results/test-CommentBlockStart.gp.log")
# Test comment block /* */
# - Set properties of different types
# - Write to a property file to allow comparison
# - Use the comment block to disable some of the commands so it
#   is obvious that the comment block is working
RemoveFile(SourceFile="results/test-CommentBlockStart-out.txt",IfSourceFileNotFound="Ignore")
SetProperty(PropertyName="TestSetProperty_str",PropertyType="str",PropertyValue="Test string value")
SetProperty(PropertyName="TestSetProperty_float",PropertyType="float",PropertyValue="1.2345")
SetProperty(PropertyName="TestSetProperty_int",PropertyType="int",PropertyValue="12345")
/* Comment out a few lines
SetProperty(PropertyName="TestSetProperty_bool",PropertyType="bool",PropertyValue="True")
SetProperty(PropertyName="TestSetProperty_list_str",PropertyType="str",PropertyValues="String1,String2,String3")
SetProperty(PropertyName="TestSetProperty_list_str_brackets",PropertyType="str",PropertyValues="[String1,String2,String3]")
*/
# Uncomment the following command to regenerate the expected results file.
#WritePropertiesToFile(OutputFile="expected-results/test-CommentBlockStart-out.txt",IncludeProperties="TestSetProperty*",FileFormat="NameValue",SortOrder="Ascending")
# Generate new output...
WritePropertiesToFile(OutputFile="results/test-CommentBlockStart-out.txt",IncludeProperties="TestSetProperty*",FileFormat="NameValue",SortOrder="Ascending")
# Do regression comparison...
CompareFiles(InputFile1="expected-results/test-CommentBlockStart-out.txt",InputFile2="results/test-CommentBlockStart-out.txt",IfDifferent="Warn")
