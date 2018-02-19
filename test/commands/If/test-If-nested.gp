StartLog(LogFile="results/test-If-nested.TSTool.log")
# Test evaluating an integer condition where integer is supplied by property
# - test nested If blocks
#@expectedStatus Warning
SetProperty(PropertyName="SampleSizeRequired",PropertyType="int",PropertyValue="10")
SetProperty(PropertyName="SampleSize",PropertyType="int",PropertyValue="5")
If(Name="SampleSizeCheck3Outer",Condition="${SampleSize} < ${SampleSizeRequired}")
  If(Name="SampleSizeCheck3InnerTrue",Condition="${SampleSize} == 5")
    Message(Message="Sample size (${SampleSize}) is == 5",CommandStatus=WARNING)
  EndIf(Name="SampleSizeCheck3InnerTrue")
  If(Name="SampleSizeCheck3InnerFalse",Condition="${SampleSize} == 6")
    Message(Message="Sample size (${SampleSize}) is not == 6",CommandStatus=WARNING)
  EndIf(Name="SampleSizeCheck3InnerFalse")
EndIf(Name="SampleSizeCheck3Outer")
