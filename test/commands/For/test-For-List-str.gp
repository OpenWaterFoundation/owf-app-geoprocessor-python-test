# Test For loop
# - Single list of str
# - Output iterator to a property file, appending
StartLog(LogFile="results/test-For-List-str.gp.log")
SetProperty(PropertyName="TestListStr",PropertyType="str",PropertyValues="string1,string2,string3")
# Uncomment the following command to regenerate expected results file
# - have to remove expected results since appending
#RemoveFile(SourceFile="expected-results/test-For-List-str-out.txt",IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-For-List-str-out.txt",IfSourceFileNotFound="Ignore")
For(Name="ForList",IteratorProperty="TestForProperty",ListProperty="TestListStr")
  # Uncomment the following command to regenerate the expected results file (AND SEE OTHER COMMAND ABOVE)
  #WritePropertiesToFile(OutputFile="expected-results/test-For-List-str-out.txt",IncludeProperties="TestForProperty",FileFormat="NameValue",WriteMode="Append")
  # Generate new output...
  WritePropertiesToFile(OutputFile="results/test-For-List-str-out.txt",IncludeProperties="TestForProperty",FileFormat="NameValue",WriteMode="Append")
EndFor(Name="ForList")
# Do regression comparison...
CompareFiles(InputFile1="expected-results\test-For-List-str-out.txt",InputFile2="results/test-For-List-str-out.txt",IfDifferent="Warn")
