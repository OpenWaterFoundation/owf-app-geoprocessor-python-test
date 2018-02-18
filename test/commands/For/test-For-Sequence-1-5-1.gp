# Test For loop
# - Single sequence 1 to 5, increment=1
# - Output iterator to a property file, appending
StartLog(LogFile="results/test-For-Sequence-1-5-1.gp.log")
# Uncomment the following command to regenerate expected results file
# - have to remove expected results since appending
#RemoveFile(SourceFile="expected-results/test-For-Sequence-1-5-1-out.txt",IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-For-Sequence-1-5-1-out.txt",IfSourceFileNotFound="Ignore")
For(Name="ForSequence",IteratorProperty="TestForProperty",SequenceStart="1",SequenceEnd="5",SequenceIncrement="1")
  # Uncomment the following command to regenerate the expected results file (AND SEE OTHER COMMAND ABOVE)
  #WritePropertiesToFile(OutputFile="expected-results/test-For-Sequence-1-5-1-out.txt",IncludeProperties="TestForProperty",FileFormat="NameValue",WriteMode="Append")
  # Generate new output...
  WritePropertiesToFile(OutputFile="results/test-For-Sequence-1-5-1-out.txt",IncludeProperties="TestForProperty",FileFormat="NameValue",WriteMode="Append")
EndFor(Name="ForSequence")
# Do regression comparison...
CompareFiles(InputFile1="expected-results\test-For-Sequence-1-5-1-out.txt",InputFile2="results/test-For-Sequence-1-5-1-out.txt",IfDifferent="Warn")
