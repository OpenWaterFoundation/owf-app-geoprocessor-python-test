# RemoveGeoLayerAttributes Tests
|Test|Description|
|----|-----|
|`test-RemoveGeoLayerAttributes-InvalidAttributeName-ExpectFail.gp`|Tests that the command throws a FAILURE if the input AttributeName is an invalid attribute name (does not exist within the GeoLayer).|
|`test-RemoveGeoLayerAttributes-InvalidGeoLayer-ExpectFail.gp`|Test that the command throws a FAILURE if the input GeoLayer is an invalid GeoLayer (does not exist).|
|`test-RemoveGeoLayerAttributes-Line-Memory-multiAttribute`|Tests removing two attributes from a single-feature `LINE` GeoJSON. The GeoLayer is a memory layer.|
|`test-RemoveGeoLayerAttributes-Line-Memory-oneAttribute`|Tests removing an attribute from a single-feature `LINE` GeoJSON. The GeoLayer is a memory layer.|
|`test-RemoveGeoLayerAttributes-Line-OnDisk-multiAttribute`|Tests removing two attributes from a single-feature `LINE` GeoJSON. The GeoJSON is written to disk.|
|`test-RemoveGeoLayerAttributes-Line-OnDisk-oneAttribute`|Tests removing an attribute from a single-feature `LINE` GeoJSON. The GeoJSON is written to disk.|
|`test-RemoveGeoLayerAttributes-Lines-OnDisk-multiAttribute`|Tests removing two attributes from a multi-feature `LINE` GeoJSON. The GeoJSON is written to disk.|
|`test-RemoveGeoLayerAttributes-Lines-OnDisk-oneAttribute`|Tests removing an attribute from a multi-feature `LINE` GeoJSON. The GeoJSON is written to disk.|