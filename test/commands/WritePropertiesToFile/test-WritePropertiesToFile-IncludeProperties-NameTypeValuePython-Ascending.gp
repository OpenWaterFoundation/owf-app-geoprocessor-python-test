# Test writing processor properties (not internal) properties to a file
# - FileFormat=NameTypeValuePython
# - Use IncludeProperties and a wildcard to constrain the properties being written
# - Property names are listed in order that is not sorted
# - Sort Ascending
# - Disable until Python output can be implemented
#@enabled False
StartLog(LogFile="results/test-WritePropertiesToFile-IncludeProperties-NameTypeValuePython-Ascending.gp.log")
RemoveFile(SourceFile="results/test-WritePropertiesToFile-IncludeProperties-NameTypeValuePython-Ascending-out.txt",IfSourceFileNotFound="Ignore")
#SetProperty(PropertyName="ZZZDateTimeProp",PropertyType="DateTime",PropertyValue="2012-01-01")
SetProperty(PropertyName="ZZZStrProp3",PropertyType="str",PropertyValue="A third string")
SetProperty(PropertyName="ZZZFloatProp",PropertyType="float",PropertyValue="1.2345")
SetProperty(PropertyName="ZZZStrProp",PropertyType="str",PropertyValue="A string")
SetProperty(PropertyName="ZZZStrProp2",PropertyType="str",PropertyValue="A second string")
SetProperty(PropertyName="ZZZIntProp",PropertyType="int",PropertyValue="12345")
SetProperty(PropertyName="ZZZBoolProp",PropertyType="bool",PropertyValue="True")
# Uncomment the following two commands to regenerate the expected results file.
#WritePropertiesToFile(OutputFile="expected-results/test-WritePropertiesToFile-IncludeProperties-NameTypeValuePython-Ascending-out.txt",IncludeProperties="ZZZBoolProp,ZZZFloatProp,ZZZIntProp,ZZZStrProp,ZZZStrProp2",FileFormat="NameTypeValuePython",SortOrder="Ascending")
# Generate new output...
WritePropertiesToFile(OutputFile="results/test-WritePropertiesToFile-IncludeProperties-NameTypeValuePython-Ascending-out.txt",IncludeProperties="ZZZBoolProp,ZZZFloatProp,ZZZIntProp,ZZZStrProp,ZZZStrProp2,ZZZBoolProp",FileFormat="NameTypeValuePython",SortOrder="Ascending")
# Do regression comparison...
CompareFiles(InputFile1="expected-results\test-WritePropertiesToFile-IncludeProperties-NameTypeValuePython-Ascending-out.txt",InputFile2="results/test-WritePropertiesToFile-IncludeProperties-NameTypeValuePython-Ascending-out.txt",IfDifferent="Warn")
