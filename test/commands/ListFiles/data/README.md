# ListFiles Data

|Data|Description|Source|How To Recreate|
|---|-----|-----|----|
|`line.geojson`|A single feature (`LINE`) GeoJSON file. (Projected in WGS84 - `EPSG:4326`). |Manually created using QGIS Desktop.| See step-by-step instructions below.|
|`line_geojson.zip`|A zipped file. A single feature (`LINE`) GeoJSON file is within the zipped file. GeoJSON is projected in WGS84 - `EPSG:4326`. |Manually created using QGIS Desktop. Manually archived.| See step-by-step instructions below.|
|`test-file.txt`|An empty `.txt` file.|Manually created.| See step-by-step instructions below.|
|`test-folder`|An empty folder.|Manually created.| See step-by-step instructions below.|

# Creating a GeoJSON File in QGIS Desktop

| |		|
|-|----|
|1|Open QGIS Desktop.|
|2|In the top menu toolbar, click `Layer`.|
|3|Hover over the `Create Layer` and then click the `New Shapefile Layer...` button.|
|4|The `New Shapfile Layer` window will appear.|
|5|In the `Type` selection box, select the desired feature geometry type (`POINT`, `LINE`, or `POLYGON`).|
|6|In the unnamed drop down menu, select the desired coordinate reference system. To recreate the test data for the `CopyGeoLayer` command, select `(EPSG:4326, WGS84)`. |
|7|Click `OK`.|
|8|The `Save layer as...` window will appear.|
|9|Browse to a safe, but temporary, folder location. Give the file an appropriate name (`POINT`, `LINE`, or `POLYGON` are suggested). 
|10| Click `OK`.|
|11|The newly created shapefile will be added to the `Layers Panel` in QGIS Desktop.|
|12|Right-click on the layer in the `Layers Panel`. Click `Toggle Editing`.|
|13|Click the `Add Feature` button in the top menu bar. It should look something like one of the images in `Appendix A`.|
|14|Click on the QGIS main screen. This will allow the creation of a `POINT`, `LINE` or `POLYGON`.|
|15|The `Feature Attributes` window will appear. Enter `1` for the `id`. Click `OK`.|
|16|Right-click on the layer in the `Layers Panel`. Click `Toggle Editing`.|
|17|The `Stop editing` window will appear. Click `Save`. The shapefile now has one feature.|
|18|Right-click on the layer in the `Layers Panel`. Click `Save as...`.|
|19|The `Save vector layer as...` window will appear.|
|20|In the `Format` drop down menu, select `GeoJSON`.|
|21|Click the `Browse` button. Browse to the appropriate `test/data` folder.  Give the file an appropriate name (`POINT`, `LINE`, or `POLYGON` are suggested).|
|22|Click `OK`.|


# How to Archive a set of files Into a Zip Folder.

| |		|
|-|----|
|1|Open File Explorer. Select the files and folders that you want to archive. Press and hold the `CTRL` button while selecting files and folder in order to select multiple files at once.|
|2|Click the `Share` tab in the top menubar.|
|3|In the `Send` section, click the `Zip` button.|
|4|Type the name that you want for the archive file.|
|5|Press `Enter`.|

# How to Create an Empty Text File (`.txt`)
|||
|-|----|
|1|Use `File Explorer` to navigate to the folder where the empty text file will "live".|
|2|Right-click in the `File Explorer` main screen. A pop-up window will appear.|
|3|Click `New` > `Text Document`|
|4|Give the file a name.|

# How to Create an Empty File Folder/Directory 
|||
|-|----|
|1|Use `File Explorer` to navigate to the folder where the empty folder will "live".|
|2|Right-click in the `File Explorer` main screen. A pop-up window will appear.|
|3|Click `New` > `Folder`|
|4|Give the folder a name.|

## Appendix A

### Add Feature Button - `POINT`
![QGIS-AddFeature-Point](../../../images/QGIS-AddFeature-Point.PNG)
### Add Feature Button - `LINE`
![QGIS-AddFeature-Line](../../../images/QGIS-AddFeature-Line.PNG)
### Add Feature Button - `POLYGON`
![QGIS-AddFeature-Polygon](../../../images/QGIS-AddFeature-Polygon.PNG)