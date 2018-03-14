# IntersectGeoLayer Tests

|Test|Description|
|----|-----|
|`test-IntersectGeoLayer-lines-linesAsIntersect`|Test that a multi-feature `LINE` GeoLayer is properly intersected by a multi-feature `LINE` GeoLayer.|
|`test-IntersectGeoLayer-lines-pointsAsIntersect-expectFail`|Test that a `FAILURE` is raised if attempting to use the IntersectGeoLayer command to intersect a multi-feature `LINE` GeoLayer with a multi-feature `POINT` GeoLayer.|
|`test-IntersectGeoLayer-lines-polygonAsIntersect`|Test that a multi-feature `LINE` GeoLayer is properly intersected by a multi-feature `POLYGON` GeoLayer.|
|`test-IntersectGeoLayer-lines-polygonAsIntersect-ExcludeIntersectAttributes`|Test that the `ExcludeIntersectAttributes` optional parameter works properly. Should exclude a select number of intersect GeoLayer  attributes from the output intersected GeoLayer.|
|`test-IntersectGeoLayer-lines-polygonAsIntersect-IncludeIntersectAttributes`|Test that the `IncludeIntersectAttributes` optional parameter works properly. Should only include a select number of intersect GeoLayer  attributes from the output intersected GeoLayer.|
|`test-IntersectGeoLayer-lines-polygonAsIntersect-outputGeoLayerID`|Test that the optional `OutputGeoLayerID` functions as desired. `output` is used as the `OutputGeoLayerID` instead of the default `OutputGeoLayerID`.|
|`test-IntersectGeoLayer-points-linesAsIntersect`|Test that a multi-feature `POINT` GeoLayer is properly intersected by a multi-feature `LINE` GeoLayer.|
|`test-IntersectGeoLayer-points-pointsAsIntersect`|Test that a multi-feature `POINT` GeoLayer is properly intersected by a multi-feature `POINT` GeoLayer.|
|`test-IntersectGeoLayer-points-polygonAsIntersect`|Test that a multi-feature `POINT` GeoLayer is properly intersected by a multi-feature `POLYGON` GeoLayer.|
|`test-IntersectGeoLayer-polygons-linesAsIntersect-expectFail`|Test that a `FAILURE` is raised if attempting to use the IntersectGeoLayer command to intersect a multi-feature `POLYGON` GeoLayer with a multi-feature `LINE` GeoLayer.|
|`test-IntersectGeoLayer-polygons-pointssAsIntersect-expectFail`|Test that a `FAILURE` is raised if attempting to use the IntersectGeoLayer command to intersect a multi-feature `POLYGON` GeoLayer with a multi-feature `POINT` GeoLayer.|
|`test-IntersectGeoLayer-polygons-polygonAsIntersect`|Test that a multi-feature `POLYGON` GeoLayer is properly intersected by a multi-feature `POLYGON` GeoLayer.|