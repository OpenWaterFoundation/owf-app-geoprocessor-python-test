# MergeGeoLayers Tests

|Test|Description|
|----|-----|
|`test-MergeGeoLayers-Lines-AttributeMap`|Tests merging two multi-feature GeoLayers with the same geometry (`LINE`). AttributeMap parameter is in use and `MERGES` the unique attribute of the two input GeoLayers into `CONVERGED` attributes in the output, merged GeoLayer.|
|`test-MergeGeoLayers-Lines-NoAttributeMap`|Tests merging two multi-feature GeoLayers with the same geometry (`LINE`). AttributeMap parameter is not in use and the unique attributes are retained  as `SEPARATE` attributes in the output, merged GeoLayer|
|`test-MergeGeoLayers-Lines-Point-ExpectFail`|Tests that a `FAIL` occurs if the MergeGeoLayers command is used to merge GeoLayers with differnt geometries. Attempts to merge a single-feature `POINT` GeoLayer and a multi-feature `LINE` GeoLayer. |