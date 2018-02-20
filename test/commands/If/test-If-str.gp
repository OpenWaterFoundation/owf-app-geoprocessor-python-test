StartLog(LogFile="results/test-If-str.gp.log")
# Test evaluating String conditions in various combinations
SetProperty(PropertyName="StringPropertyZ",PropertyType="str",PropertyValue="Z")
SetProperty(PropertyName="StringPropertyA",PropertyType="str",PropertyValue="A")
# <
If(Name="Check_String_A_LT_PropertyZ",Condition="A < ${StringPropertyZ}")
  SetProperty(PropertyName="String_A_LT_PropertyZ_Test",PropertyType="bool",PropertyValue="True")
  Message(Message="A is < ${StringPropertyZ}")
EndIf(Name="Check_String_A_LT_PropertyZ")
If(Name="Check_String_A_LT_PropertyA",Condition="A < ${StringPropertyA}")
  SetProperty(PropertyName="String_A_LT_PropertyA_Test",PropertyType="bool",PropertyValue="True")
  Message(Message="A is < ${StringPropertyA}")
EndIf(Name="Check_String_A_LT_PropertyA")
If(Name="Check_String_A_LT_Z",Condition="A < Z")
  SetProperty(PropertyName="String_A_LT_Z_Test",PropertyType="bool",PropertyValue="True")
  Message(Message="A is < Z")
EndIf(Name="Check_String_A_LT_Z")
If(Name="Check_String_A_LT_A",Condition="A < A")
  SetProperty(PropertyName="String_A_LT_A_Test",PropertyType="bool",PropertyValue="True")
  Message(Message="A is < A")
EndIf(Name="Check_String_A_LT_A")
# <=
If(Name="Check_String_A_LE_PropertyZ",Condition="A <= ${StringPropertyZ}")
  SetProperty(PropertyName="String_A_LE_PropertyZ_Test",PropertyType="bool",PropertyValue="True")
  Message(Message="A is <= ${StringPropertyZ}")
EndIf(Name="Check_String_A_LE_PropertyZ")
If(Name="Check_String_A_LE_PropertyA",Condition="A <= ${StringPropertyA}")
  SetProperty(PropertyName="String_A_LE_PropertyA_Test",PropertyType="bool",PropertyValue="True")
  Message(Message="A is <= ${StringPropertyA}")
EndIf(Name="Check_String_A_LE_PropertyA")
If(Name="Check_String_A_LE_Z",Condition="A <= Z")
  SetProperty(PropertyName="String_A_LE_Z_Test",PropertyType="bool",PropertyValue="True")
  Message(Message="A is <= Z")
EndIf(Name="Check_String_A_LE_Z")
If(Name="Check_String_A_LE_A",Condition="A <= A")
  SetProperty(PropertyName="String_A_LE_A_Test",PropertyType="bool",PropertyValue="True")
  Message(Message="A is <= A")
EndIf(Name="Check_String_A_LE_A")
# >
If(Name="Check_String_Z_GT_PropertyA",Condition="Z > ${StringPropertyA}")
  SetProperty(PropertyName="String_Z_GT_PropertyA_Test",PropertyType="bool",PropertyValue="True")
  Message(Message="Z is > ${StringPropertyA}")
EndIf(Name="Check_String_Z_GT_PropertyA")
If(Name="Check_String_Z_GT_PropertyZ",Condition="Z > ${StringPropertyZ}")
  SetProperty(PropertyName="String_Z_GT_PropertyZ_Test",PropertyType="bool",PropertyValue="True")
  Message(Message="Z is > ${StringPropertyZ}")
EndIf(Name="Check_String_Z_GT_PropertyZ")
If(Name="Check_String_Z_GT_A",Condition="Z > A")
  SetProperty(PropertyName="String_Z_GT_A_Test",PropertyType="bool",PropertyValue="True")
  Message(Message="Z is > A")
EndIf(Name="Check_String_Z_GT_A")
If(Name="Check_String_Z_GT_Z",Condition="Z > Z")
  SetProperty(PropertyName="String_Z_GT_Z_Test",PropertyType="bool",PropertyValue="True")
  Message(Message="Z is > Z")
EndIf(Name="Check_String_Z_GT_Z")
# >=
If(Name="Check_String_Z_GE_PropertyA",Condition="Z >= ${StringPropertyA}")
  SetProperty(PropertyName="String_Z_GE_PropertyA_Test",PropertyType="bool",PropertyValue="True")
  Message(Message="Z is >= ${StringPropertyA}")
EndIf(Name="Check_String_Z_GE_PropertyA")
If(Name="Check_String_Z_GE_PropertyZ",Condition="Z >= ${StringPropertyZ}")
  SetProperty(PropertyName="String_Z_GE_PropertyZ_Test",PropertyType="bool",PropertyValue="True")
  Message(Message="Z is >= ${StringPropertyZ}")
EndIf(Name="Check_String_Z_GE_PropertyZ")
If(Name="Check_String_Z_GE_A",Condition="Z >= A")
  SetProperty(PropertyName="String_Z_GE_A_Test",PropertyType="bool",PropertyValue="True")
  Message(Message="Z is >= A")
EndIf(Name="Check_String_Z_GE_A")
If(Name="Check_String_Z_GE_Z",Condition="Z >= Z")
  SetProperty(PropertyName="String_Z_GE_Z_Test",PropertyType="bool",PropertyValue="True")
  Message(Message="Z is >= Z")
EndIf(Name="Check_String_Z_GE_Z")
# ==
If(Name="Check_String_Z_EQ_PropertyZ",Condition="Z == ${StringPropertyZ}")
  SetProperty(PropertyName="String_Z_EQ_PropertyZ_Test",PropertyType="bool",PropertyValue="True")
  Message(Message="Z is == ${StringPropertyZ}")
EndIf(Name="Check_String_Z_EQ_PropertyZ")
If(Name="Check_String_Z_EQ_PropertyA",Condition="Z == ${StringPropertyA}")
  SetProperty(PropertyName="String_Z_EQ_PropertyA_Test",PropertyType="bool",PropertyValue="True")
  Message(Message="Z == ${StringPropertyA}")
EndIf(Name="Check_String_Z_EQ_PropertyA")
If(Name="Check_String_Z_EQ_Z",Condition="Z == Z")
  SetProperty(PropertyName="String_Z_EQ_Z_Test",PropertyType="bool",PropertyValue="True")
  Message(Message="Z is == Z")
EndIf(Name="Check_String_Z_EQ_Z")
If(Name="Check_String_Z_EQ_A",Condition="Z == A")
  SetProperty(PropertyName="String_Z_EQ_A_Test",PropertyType="bool",PropertyValue="True")
  Message(Message="Z == A")
EndIf(Name="Check_String_Z_EQ_A")
# !=
If(Name="Check_String_Z_NE_PropertyZ",Condition="Z != ${StringPropertyZ}")
  SetProperty(PropertyName="String_Z_NE_PropertyZ_Test",PropertyType="bool",PropertyValue="True")
  Message(Message="Z is != ${StringPropertyZ}")
EndIf(Name="Check_String_Z_NE_PropertyZ")
If(Name="Check_String_Z_NE_PropertyA",Condition="Z != ${StringPropertyA}")
  SetProperty(PropertyName="String_Z_NE_PropertyA_Test",PropertyType="bool",PropertyValue="True")
  Message(Message="Z != ${StringPropertyA}")
EndIf(Name="Check_String_Z_NE_PropertyA")
If(Name="Check_String_Z_NE_Z",Condition="Z != Z")
  SetProperty(PropertyName="String_Z_NE_Z_Test",PropertyType="bool",PropertyValue="True")
  Message(Message="Z is != Z")
EndIf(Name="Check_String_Z_NE_Z")
If(Name="Check_String_Z_NE_A",Condition="Z != A")
  SetProperty(PropertyName="String_Z_NE_A_Test",PropertyType="bool",PropertyValue="True")
  Message(Message="Z != A")
EndIf(Name="Check_String_Z_NE_A")
# Uncomment the next command to regenerate expected results
#WritePropertiesToFile(OutputFile="expected-results/test-If-str-out.txt",IncludeProperties="String_*_Test",SortOrder="Ascending")
WritePropertiesToFile(OutputFile="results/test-If-str-out.txt",IncludeProperties="String_*_Test",SortOrder="Ascending")
CompareFiles(InputFile1="expected-results/test-If-str-out.txt",InputFile2="results/test-If-str-out.txt",IfDifferent="Warn")