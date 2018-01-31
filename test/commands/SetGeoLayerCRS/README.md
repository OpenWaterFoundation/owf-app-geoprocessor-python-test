# SetGeoLayerCRS Tests

|Test|Description|
|----|-----|
|`test-SetGeoLayerCRS-Define`|*NOT YET CREATED* Tests that the SetGeoLayerCRS defines a GeoLayer's projection (GeoLayer does not have a set projection).|
|`test-SetGeoLayerCRS-Reproject`|Tests that the SetGeoLayerCRS reprojects a GeoLayer's projection (GeoLayer already has a set projection).|
|`test-SetGeoLayerCRS-Reproject-SameCRS-ExpectWarning`|Tests that a WARNING is logged if the input CRS is the same as the existing GeoLayer's CRS.|