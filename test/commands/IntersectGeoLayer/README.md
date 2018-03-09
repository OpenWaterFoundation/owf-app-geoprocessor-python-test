# IntersectGeoLayer Tests

|Test|Description|
|----|-----|
|`test-IntersectGeoLayer-lines-polygonAsIntersect`|Test that a multi-feature `LINE` GeoLayer is properly intersected by a multi-feature `POLYGON` GeoLayer.|
|`test-IntersectGeoLayer-lines-polygonAsIntersect-excludeAttributes`|Test that the `ExcludeAttributes` optional parameter works properly. Should exclude a select number of intersect GeoLayer  attributes from the output intersected GeoLayer.|
|`test-IntersectGeoLayer-lines-polygonAsIntersect-includeAttributes`|Test that the `ExcludeAttributes` optional parameter works properly. Should only include a select number of intersect GeoLayer  attributes from the output intersected GeoLayer.|
|`test-IntersectGeoLayer-lines-polygonAsIntersect-outputGeoLayerID`|Test that the optional `OutputGeoLayerID` functions as desired. `output` is used as the `OutputGeoLayerID` instead of the default `OutputGeoLayerID`.|
|`test-IntersectGeoLayer-points-polygonAsIntersect`|Test that a multi-feature `LINE` GeoLayer is properly intersected by a multi-feature `POLYGON` GeoLayer.|
|`test-IntersectGeoLayer-polygons-polygonAsIntersect`|Test that a multi-feature `LINE` GeoLayer is properly intersected by a multi-feature `POLYGON` GeoLayer.|
