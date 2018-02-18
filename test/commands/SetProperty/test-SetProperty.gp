StartLog(LogFile="results/test-SetProperty.gp.log")
# Test setting processor properties
# - Set properties of different types
# - Write to a property file to allow comparison
RemoveFile(SourceFile="results/test-SetProperty-out.txt",IfSourceFileNotFound="Ignore")
SetProperty(PropertyName="TestSetProperty_str",PropertyType="str",PropertyValue="Test string value")
SetProperty(PropertyName="TestSetProperty_float",PropertyType="float",PropertyValue="1.2345")
SetProperty(PropertyName="TestSetProperty_int",PropertyType="int",PropertyValue="12345")
SetProperty(PropertyName="TestSetProperty_bool",PropertyType="bool",PropertyValue="True")
SetProperty(PropertyName="TestSetProperty_list_str",PropertyType="str",PropertyValues="String1,String2,String3")
SetProperty(PropertyName="TestSetProperty_list_str_brackets",PropertyType="str",PropertyValues="[String1,String2,String3]")
# Uncomment the following command to regenerate the expected results file.
#WritePropertiesToFile(OutputFile="expected-results/test-SetProperty-out.txt",IncludeProperties="TestSetProperty*",FileFormat="NameValue",SortOrder="Ascending")
# Generate new output...
WritePropertiesToFile(OutputFile="results/test-SetProperty-out.txt",IncludeProperties="TestSetProperty*",FileFormat="NameValue",SortOrder="Ascending")
# Do regression comparison...
CompareFiles(InputFile1="expected-results/test-SetProperty-out.txt",InputFile2="results/test-SetProperty-out.txt",IfDifferent="Warn")
