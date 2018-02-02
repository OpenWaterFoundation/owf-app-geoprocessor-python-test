# ReadGeoLayerFromDelimitedFile Tests

|Test|Description|
|----|-----|
|`test-ReadGeoLayerFromDelimitedFile-Line`|Tests reading a single feature GeoLayer from a `LINE` delimited file. (Projected in WGS84 `EPSG:4326`). Geometry is represented in `WKT` format.|
|`test-ReadGeoLayerFromDelimitedFile-Points`|Tests reading a multi-feature GeoLayer from a `POINTS` delimited file. (Projected in WGS84 `EPSG:4326`). Geometry is represented in `XY` format.|
|`test-ReadGeoLayerFromDelimitedFile-Points-InvalidYColumn-ExpectFail`|Tests that a `FAILURE` is logged is one of the `ColumnName` parameters is invalid.|
|`test-ReadGeoLayerFromDelimitedFile-Polygon.gp`|Tests reading a single feature GeoLayer from a `POLYGON` delimited file. (Projected in WGS84 `EPSG:4326`). Geometry is represented in `WKT` format.|