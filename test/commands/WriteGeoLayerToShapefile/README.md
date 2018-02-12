# WriteGeoLayerToShapefile Tests

|Test|Description|
|----|-----|
|`test-WriteGeoLayerToShapefile-Line-ZipOutput-ExpectFail`|Tests that the Zip Output parameter (set to `TRUE`) does not write individual component shapefile files. Only a `.zip` file should be created.|
|`test-WriteGeoLayerToShapefile-Line-OutputCRS`|Tests the OutputCRS parameter of the WriteGeoLayerToShapefile command.|