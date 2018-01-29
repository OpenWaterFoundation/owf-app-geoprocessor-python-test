# MergeGeoLayers Data

|Data|Description|Source|How To Recreate|
|---|-----|-----|----|
|`lines_station_state.geojson`|A multi-feature (`LINE`) GeoJSON file. Contains 3 features. Contains 3 attributes: `id` (text), `station` (text), `state` (text). (Projected in WGS84 - `EPSG:4326`). All of the attributes have unique values. |Manually created using QGIS Desktop.| See step-by-step instructions below.|
|`lines_StatName_StateName`|A multi-feature (`LINE`) GeoJSON file. Contains 2 features. Contains 3 attributes: `id` (text), `StatName` (text), `StateName` (text). (Projected in WGS84 - `EPSG:4326`). All of the attributes have unique values. |
|`point.geojson`|A single feature (`POINT`) GeoJSON file. (Projected in WGS84 - `EPSG:4326`).|Manually created using QGIS Desktop.| See step-by-step instructions below.|

# Creating a GeoJSON File in QGIS Desktop

| |		|
|-|----|
|1|Open QGIS Desktop.|
|2|In the top menu toolbar, click `Layer`.|
|3|Hover over the `Create Layer` and then click the `New Shapefile Layer...` button.|
|4|The `New Shapfile Layer` window will appear.|
|5|In the `Type` selection box, select the desired feature geometry type (`POINT`, `LINE`, or `POLYGON`).|
|6|In the unnamed drop down menu, select the desired coordinate reference system. To recreate the test data for the `MergeGeoLayers` command, select `(EPSG:4326, WGS84)`. |
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

# Adding an Attribute to a GeoJSON

| |		|
|-|----|
|1|Open QGIS Desktop.|
|2|In `File Explorer`, navigate to a GeoJSON file.|
|3|Drag the GeoJSON file from the `File Explorer` window and into the QGIS Desktop.|
|4|The layer will appear in the `Layers Panel`.|
|5|Right-click on the layer in the `Layers Panel`. Click `Toggle Editing`.|
|6|Right-click on the layer in the `Layers Panel`. Click `Open Attribute Table`.|
|7|Click the `New Field` button in the top menu bar. It should look something like the image in `Appendix A`.|
|8|The `Add field` window will appear.|
|9|Give the attribute (a.k.a. _field_) a `Name`.|
|10|In the dropdown menu next to the `Type` paramter, select the appropriate data type that this field will hold.|
|11|Give the attribute a `Length`, if desired.|
|12|Click `OK`.|
|13|To populate the attribute values of the new attribute, click the white empty box under the attribute name and to the right of the feature. Enter an appropriate value.|
|14|Close the attribute table.|
|15|To save the added attribute and the entered attribute values, right-click on the layer in the `Layers Panel`. Click `Toggle Editing`.|
|16|The `Stop editing` window will appear. Click `Save`.|

## Appendix A

### Add Feature Button - `POINT`
![QGIS-AddFeature-Point](../../../images/QGIS-AddFeature-Point.PNG)
### Add Feature Button - `LINE`
![QGIS-AddFeature-Line](../../../images/QGIS-AddFeature-Line.PNG)
### Add Feature Button - `POLYGON`
![QGIS-AddFeature-Polygon](../../../images/QGIS-AddFeature-Polygon.PNG)