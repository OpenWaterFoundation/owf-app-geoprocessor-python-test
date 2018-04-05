# ReadGeoLayerFromFGDB Tests

|Test|Description|
|----|-----|
|`test-ReadGeoLayerFromFGDB-InvalidFGDB-ExpectFail`|Tests that a `FAILURE` occurs if an invalid file geodatabase is attempted to be read.|
|`test-ReadGeoLayerFromFGDB-line`|Tests that a GeoLayer is read from a feature class (`LINE` geometry) of a file geodatabase.|
|`test-ReadGeoLayerFromFGDB-point`|Tests that a GeoLayer is read from a feature class (`POINT` geometry) of a file geodatabase.|
|`test-ReadGeoLayerFromFGDB-polygon`|Tests that a GeoLayer is read from a feature class (`POLYGON` geometry) of a file geodatabase.|
|`test-ReadGeoLayerFromFGDB-WrongFC-ExpectFail`|Tests that a `FAILURE` occurs if a non-existing feature class is attempted to be read.|
|`test-ReadGeoLayerFromFGDB-WrongFGDB-ExpectFail`|Tests that a `FAILURE` occurs if a non-existing file geodatabase is attempted to be read.|