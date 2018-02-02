# WriteGeoLayerToDelimitedFile Tests

|Test|Description|
|----|-----|
|`test-WriteGeoLayerToDelimitedFile-Line-OutputGeometry-WKT`|Tests that a `LINE` GeoLayer can be accurately written to delimited file in `WKT format`.|
|`test-WriteGeoLayerToDelimitedFile-Line-OutputGeometry-XY-ExpectFail`|Tests that a `LINE` GeoLayer cannot be accurately written to delimited file in `XY format`. A `FAIL` should occur for this test to pass.|
|`test-WriteGeoLayerToDelimitedFile-Points`|Tests that a multi-feature `POINTS` GeoLayer can be accurately written to delimited file in `XY format`.|
|`test-WriteGeoLayerToDelimitedFile-Points-OutputCRS`|Tests that the `OutputCRS` parameter functions as expected. The multi-feature `POINTS` GeoLayer is reprojected from `WGS84` (geometry in decimal degrees) to `NAD83 UTM ZONE 13N` (meters) and written to a delimited file in `XY format`.|
|`test-WriteGeoLayerToDelimitedFile-Polygon-OutputDelimiter-WKT`|Tests that the `OutputDelimiter` parameter functions as expected. The delimiter of the output delimited file is a `semicolon` instead of the default `comma`.|