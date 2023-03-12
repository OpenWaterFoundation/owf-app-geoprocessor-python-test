# Test For loop:
# - Nested loops using list of str
# - Output iterator to a property file, appending
StartLog(LogFile="results/test-For-List-str-Nested.gp.log")
SetProperty(PropertyName="TestListStr",PropertyType="str",PropertyValues="string1,string2,string3")
SetProperty(PropertyName="TestListStr2",PropertyType="str",PropertyValues="stringA,stringB,stringC")
# Uncomment the following command to regenerate expected results file:
# - have to remove expected results since appending
#RemoveFile(SourceFile="expected-results/test-For-List-str-Nested-out.txt",IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-For-List-str-Nested-out.txt",IfSourceFileNotFound="Ignore")
For(Name="ForList1",IteratorProperty="TestForProperty",ListProperty="TestListStr")
    # Uncomment the following command to regenerate the expected results file (AND SEE OTHER COMMAND ABOVE AND BELOW).
    #WritePropertiesToFile(OutputFile="expected-results/test-For-List-str-Nested-out.txt",IncludeProperties="TestForProperty",FileFormat="NameValue",WriteMode="Append")
    # Generate new output.
    WritePropertiesToFile(OutputFile="results/test-For-List-str-Nested-out.txt",IncludeProperties="TestForProperty",FileFormat="NameValue",WriteMode="Append")
    For(Name="ForList2",IteratorProperty="TestForProperty2",ListProperty="TestListStr2")
        # Uncomment the following command to regenerate the expected results file (AND SEE OTHER 2 COMMANDS ABOVE)
        #WritePropertiesToFile(OutputFile="expected-results/test-For-List-str-Nested-out.txt",IncludeProperties="TestForProperty2",FileFormat="NameValue",WriteMode="Append")
        # Generate new output.
        WritePropertiesToFile(OutputFile="results/test-For-List-str-Nested-out.txt",IncludeProperties="TestForProperty2",FileFormat="NameValue",WriteMode="Append")
    EndFor(Name="ForList2")
EndFor(Name="ForList1")
# Do regression comparison.
CompareFiles(InputFile1="expected-results\test-For-List-str-Nested-out.txt",InputFile2="results/test-For-List-str-Nested-out.txt",IfDifferent="Warn")
