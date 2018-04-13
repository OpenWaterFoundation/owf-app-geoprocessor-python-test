# ReadGeoLayersFromFGDB Tests

|Test|Description|
|----|-----|
|`test-ReadGeoLayersFromFGDB`|Tests reading GeoLayers from a file geodatabse. The file geodatabse contains a `LINE` feature class, a `POLYGON` feature class and a `POINT` feature class.|
|`test-ReadGeoLayersFromFGDB-GeoLayerID_prefix`|Tests that the `GeoLayerID_prefix` parameter adds the prefix to the GeoLayerID.|
|`test-ReadGeoLayersFromFGDB-InvalidFGDB-ExpectFail`|Tests that a `FAILURE` occurs if an invalid file geodatabase is attempted to be read.|
|`test-ReadGeoLayersFromFGDB-OnlyOne-line`|Tests that `ONE` specific GeoLayer is read from a feature class (`LINE` geometry) of a file geodatabase.|
|`test-ReadGeoLayersFromFGDB-OnlyOne-point`|Tests that `ONE` specific GeoLayer is read from a feature class (`POINT` geometry) of a file geodatabase.|
|`test-ReadGeoLayersFromFGDB-OnlyOne-polygon`|Tests that `ONE` specific GeoLayer is read from a feature class (`POLYGON` geometry) of a file geodatabase.|
|`test-ReadGeoLayersFromFGDB-Subset_Pattern-ExpectFail`|Tests that the `Subset_Pattern` parameter restricts reading in the `LINE` feature class as a GeoLayer. Expects fail - only passes globally if it fails locally.|
|`test-ReadGeoLayersFromFGDB-WrongFC-ExpectFail`|Tests that a `FAILURE` occurs if a non-existing feature class is attempted to be read.|
|`test-ReadGeoLayersFromFGDB-WrongFGDB-ExpectFail`|Tests that a `FAILURE` occurs if a non-existing file geodatabase is attempted to be read.|