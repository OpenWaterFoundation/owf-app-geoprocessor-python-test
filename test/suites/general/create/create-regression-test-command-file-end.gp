# Command file to finish the automated tests:
# - output files use current time as ${NowString} from main command file so can compare test results over time
# - write the summary table to CSV and Excel files
# - specify a results folder in the location where the test suite will be run
# - TODO smalers 2023-03-08 table results are not yet enabled but copy from TSToo to show how it needs to be done
/*
WriteTableToDelimitedFile(TableID="TestResults",OutputFile="Results/RunRegressionTest_commands_general_Windows_out_${NowString}.csv",WriteHeaderComments=False)
ReadTableFromDelimitedFile(TableID="StyleTable",InputFile="StyleTable.csv")
ReadTableFromDelimitedFile(TableID="ConditionTable",InputFile="ConditionTable.csv")
NewExcelWorkbook(OutputFile="Results/RunRegressionTest_commands_general_Windows_out_${NowString}.xlsx",Worksheets="TestResults",KeepOpen=True)
SetExcelWorksheetViewProperties(OutputFile="Results/RunRegressionTest_commands_general_Windows_out_${NowString}.xlsx",Worksheet="TestResults",KeepOpen=True,FreezePaneRowBelowSplit=2)
WriteTableToExcel(TableID="TestResults",OutputFile="Results/RunRegressionTest_commands_general_Windows_out_${NowString}.xlsx",Worksheet="TestResults",ExcelAddress="A1",ExcelColumnNames=FirstRowInRange,ColumnWidths="Default:Auto",ConditionTableID="ConditionTable",StyleTableID="StyleTable")
*/
