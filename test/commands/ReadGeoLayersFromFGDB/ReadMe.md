# ReadGeoLayersFromFGDB Tests
|Test|Description|
|----|-----|
|`test-ReadGeoLayersFromFGDB`|Tests reading GeoLayers from a file geodatabse. The file geodatabse contains a `LINE` feature class, a `POLYGON` feature class and a `POINT` feature class.|
|`test-ReadGeoLayersFromFGDB-GeoLayerID_prefix`|Tests that the `GeoLayerID_prefix` parameter adds the prefix to the GeoLayerID.|
|`test-ReadGeoLayersFromFGDB-Subset_Pattern-ExpectFail`|Tests that the `Subset_Pattern` parameter restricts reading in the `LINE` feature class as a GeoLayer. Expects fail - only passes globally if it fails locally.|