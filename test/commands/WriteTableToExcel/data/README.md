# WriteTableToExcel Data

|Data|Description|Source|How To Recreate|
|---|-----|-----|----|
|`workbook-xlsx.xlsx`|An Excel workbook (`.xlsx` file) with two worksheets. Each worksheet has a simple table with various cell formats (`text`, `integer`, etc.).|Manually created.|Open an Excel workbook. Add the below data tables. Save as an `.xlsx` file.|
|`existing-workbook.xlsx`|An Excel workbook (`.xlsx` file) with one worksheets. The worksheet must be named `ExitingSheet` but the contents are not important. This file is used to test how well the command functions when writing a Table to an existing Excel file. |Manually created.|-|


## Data Tables

Make sure that the Excel cells for each of the following columns are properly formatted. 

|Column Name|Cell Formatting (General)|Cell Formatting (Specific)|
|-|-|-|
|String|`Text`|-|
|Date|`Date`| Type: `*3/14/2012`|
|Integer|`Number`| Decimal Places: `0`|
|Float|`Number`| Decimal Places: `3`|
|Boolean|`General`|-|

### First Worksheet (`TestSheet1`)

|String|Date|Integer|Float|Boolean|
|-|-|-|-|-|
|testA|3/7/2016|1|1.450|TRUE|
|testB|4/10/2018|4|1.009|FALSE|

### Second Worksheet (`TestSheet2`)

|String|Date|Integer|Float|Boolean|
|-|-|-|-|-|
|testC|6/3/1999|3|6.022|FALSE|
|testD|8/27/2003|14|0.500|TRUE|