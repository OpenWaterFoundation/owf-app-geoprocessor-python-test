StartLog(LogFile="results/test-SetProperty-env.gp.log")
# Test setting processor properties
# - Source of property value is an environment variable - use common variables
#   but will need to enhance to run tests on different operating systems,
#   for example by checking for environment variable and then do If for each OS.
# - Set properties of different types
# - Write to a property file to allow comparison
RemoveFile(SourceFile="results/test-SetProperty-env-out.txt",IfSourceFileNotFound="Ignore")
# Try to figure out the OS
# On Windows will have something like OS=Windows_NT
SetProperty(PropertyName="TestSetProperty_OS",PropertyType="str",PropertyValue="${env:OS}")
If(Name="If_OS_Windows",Condition="${TestSetProperty_OS} == Windows_NT")
  SetProperty(PropertyName="TestSetProperty_str",PropertyType="str",PropertyValue="${env:OS}")
  #SetProperty(PropertyName="TestSetProperty_float",PropertyType="float",PropertyValue="1.2345")
  #SetProperty(PropertyName="TestSetProperty_int",PropertyType="int",PropertyValue="12345")
  #SetProperty(PropertyName="TestSetProperty_bool",PropertyType="bool",PropertyValue="True")
  #SetProperty(PropertyName="TestSetProperty_list_str",PropertyType="str",PropertyValues="String1,String2,String3")
  #SetProperty(PropertyName="TestSetProperty_list_str_brackets",PropertyType="str",PropertyValues="[String1,String2,String3]")
  # Uncomment the following command to regenerate the expected results file.
  #WritePropertiesToFile(OutputFile="expected-results/test-SetProperty-env-win-out.txt",IncludeProperties="TestSetProperty_str",FileFormat="NameValue",SortOrder="Ascending")
  # Generate new output...
  #WritePropertiesToFile(OutputFile="results/test-SetProperty-env-win-out.txt",IncludeProperties="TestSetProperty*",FileFormat="NameValue",SortOrder="Ascending")
  WritePropertiesToFile(OutputFile="results/test-SetProperty-env-win-out.txt",IncludeProperties="TestSetProperty_str",FileFormat="NameValue",SortOrder="Ascending")
  # Do regression comparison...
  CompareFiles(InputFile1="expected-results/test-SetProperty-env-win-out.txt",InputFile2="results/test-SetProperty-env-win-out.txt",IfDifferent="Warn")
EndIf(Name="If_OS_Windows")
