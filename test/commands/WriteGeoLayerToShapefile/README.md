# WriteGeoLayerToShapefile Tests

|Test|Description|
|----|-----|
|`test-WriteGeoLayerToShapefile-Line-ExtendedOutput-CompressedOutput-ExpectFail`|Tests that the Extended Output parameter (set to `FALSE`) does not write individual component shapefile files. Only a `.zip` file should be created.|
|`test-WriteGeoLayerToShapefile-Line-OutputCRS`|Tests the OutputCRS parameter of the WriteGeoLayerToShapefile command.|