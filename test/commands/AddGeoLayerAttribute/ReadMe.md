# AddGeoLayerAttribute Tests

|Test|Description|
|----|-----|
|`test-AddGeoLayerAttribute-Line-Memory`|Tests adding an attribute to a single-feature `LINE` Shapefile. The GeoLayer is a memory layer.|
|`test-AddGeoLayerAttribute-Line-OnDisk`|Tests adding an attribute to a single-feature `LINE` Shapefile. The GeoLayer is written to disk.|
|`test-AddGeoLayerAttribute-Point-Memory`|Tests adding an attribute to a single-feature `POINT` Shapefile. The GeoLayer is a memory layer.|
|`test-AddGeoLayerAttribute-Point-OnDisk`|Tests adding an attribute to a single-feature `POINT` Shapefile. The GeoLayer is written to disk.|
|`test-AddGeoLayerAttribute-Polygon-Memory`|Tests adding an attribute to a single-feature `POLYGON` Shapefile. The GeoLayer is a memory layer.|
|`test-AddGeoLayerAttribute-Polygon-OnDisk`|Tests adding an attribute to a single-feature `POLYGON` Shapefile. The GeoLayer is written to disk.|

## Special Notes
The tests must write out to Shapefile format (not GeoJSON). By default, GeoJSON files remove the attribute properties if the attribute has no value. Becasue these tests are adding `empty` attributes, the GeoJSON format cannot be used in the testing. For the tests, only the `.dbf` files of the output Shapefiles are compared. The `.dbf` file is the file that holds the attribute table data for the Shapefile.