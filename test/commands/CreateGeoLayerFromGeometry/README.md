# CreateGeoLayerFromGeometry Tests

|Test|Description|
|----|-----|
|`test-CreateGeoLayerFromGeometry-BoundingBox-Polygon-UTMZ14N`|Tests that a GeoLayer is created with a `BoundingBox` geometry format. Tests that meter units are read correctly.|
|`test-CreateGeoLayerFromGeometry-BoundingBox-Polygon-WGS84`|Tests that a GeoLayer is created with a `BoundingBox` geometry format. Tests that decimal degree units are read correctly.|
|`test-CreateGeoLayerFromGeometry-WKB-Point`|Tests that a `POINT` GeoLayer is created with a `Well-Known Binary` geometry format. This test will only pass if the QGIS version is 3.0 or greater. Currently set to `FAIL` since the developing environment is QGIS 2. (2018/02/12)| 
|`test-CreateGeoLayerFromGeometry-WKT-Line`|Tests that a single-feature `LINE` GeoLayer is created with a `Well-Known Text` geometry format.|
|`test-CreateGeoLayerFromGeometry-WKT-Point`|Tests that a single-feature `POINT` GeoLayer is created with a `Well-Known Text` geometry format.|
|`test-CreateGeoLayerFromGeometry-WKT-Polygons`|Tests that a multi-feature `POLYGON` GeoLayer is created with a `Well-Known Text` geometry format.|