# IntersectGeoLayer Data

|Data|Description|Source|How To Recreate|
|---|-----|-----|----|
|`polygon-co-counties.geojson`|A multi-feature (`POLYGON`) GeoJSON file. (Projected in WGS84 - `EPSG:4326`). This spatial data is a polygon that overlaps the `input_lines.geojson`, the `input_points.geojson` and the `input_polygons.geojson` spatial data files. It is used as the `IntersectGeoLayer` in the CopyGeoLayer tests. 4 Colorado counties. |[Colorado DOLA](https://demography.dola.colorado.gov/gis/gis-data/)| Run the `create-polygon-co-counties.geojson.gp`.|
|`input_lines.geojson`|A multi-feature (`LINES`) GeoJSON file. (Projected in WGS84 - `EPSG:4326`). Has lines that that partially overlap the `clipping_polygon.geojson` spatial data file and others that do not intersect.|Manually created using QGIS Desktop.| See step-by-step instructions below.|
|`input_points.geojson`|A multi-feature (`POINTS`) GeoJSON file. (Projected in WGS84 - `EPSG:4326`). Has points that overlap the `clipping_polygon.geojson` spatial data file and others that do not intersect.|Manually created using QGIS Desktop.| See step-by-step instructions below.|
|`input_polygons.geojson`|A multi-feature (`POLYGONS`) GeoJSON file. (Projected in WGS84 - `EPSG:4326`). Has polygons that partially overlap the `clipping_polygon.geojson` spatial data file and others that do not intersect.|Manually created using QGIS Desktop.| See step-by-step instructions below.|

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
|16|Continue with steps 14 and 15 to create multiple features. Enter a unique ID in step 15 for each new feature.|
|17|Right-click on the layer in the `Layers Panel`. Click `Toggle Editing`.|
|18|The `Stop editing` window will appear. Click `Save`. The shapefile now has one feature.|
|19|Right-click on the layer in the `Layers Panel`. Click `Save as...`.|
|20|The `Save vector layer as...` window will appear.|
|21|In the `Format` drop down menu, select `GeoJSON`.|
|22|Click the `Browse` button. Browse to the appropriate `test/data` folder.  Give the file an appropriate name (`POINT`, `LINE`, or `POLYGON` are suggested).|
|23|Click `OK`.|

## Appendix A

### Add Feature Button - `POINT`
![QGIS-AddFeature-Point](../../../images/QGIS-AddFeature-Point.PNG)
### Add Feature Button - `LINE`
![QGIS-AddFeature-Line](../../../images/QGIS-AddFeature-Line.PNG)
### Add Feature Button - `POLYGON`
![QGIS-AddFeature-Polygon](../../../images/QGIS-AddFeature-Polygon.PNG)