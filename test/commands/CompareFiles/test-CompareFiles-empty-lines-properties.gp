StartLog(LogFile="results/test-CompareFiles-empty-lines-properties.gp.log")
# - use properties for the files and set output properties
#@expectedStatus Warning
# - use properties for the files and set output properties
# Test comparing files with empty lines
# - there should be two differences
# - also test that properties for number of differences and file different are OK
SetProperty(PropertyName="TestInputFile1",PropertyType="str",PropertyValue="data/d1-empty-lines.txt")
SetProperty(PropertyName="TestInputFile2",PropertyType="str",PropertyValue="data/d2-empty-lines.txt")
# The CompareFiles() command will set properties that allow checking the command worked.
CompareFiles(InputFile1="${TestInputFile1}",InputFile2="${TestInputFile2}",IfDifferent="Warn",LineDiffCountProperty="TestLineDiffCount",FileDiffProperty="TestFileDiff")
If(Name="CheckLineDiffCount",Condition="${TestLineDiffCount} != 2")
Message(Message="Expecting TestLineDiffCount = 2, got ${TestLineDiffCount}",CommandStatus="FAILURE")
EndIf(Name="CheckLineDiffCount")
If(Name="CheckFileDiff",Condition="${TestFileDiff} != True")
    Message(Message="Expecting TestFileDiff=True, got ${TestFileDiff}",CommandStatus="FAILURE")
EndIf(Name="CheckFileDiff")