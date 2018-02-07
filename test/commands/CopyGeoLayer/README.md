# CopyGeoLayer Tests

|Test|Description|
|----|-----|
|`test-CopyGeoLayer-Line`|Tests copying a single-feature, single-attribute `LINE` GeoLayer. Line GeoJSON is read into the GeoProcessor and then copied. The copied GeoLayer is written out in GeoJSON format. The input and output GeoJSON files are compared. Allows for two differences (GeoJSON name and GeoJSON precision).|
|`test-CopyGeoLayer-Line-CopiedGeoLayerID`|Tests copying a single-feature, single-attribute `LINE` GeoLayer. Tests that the `CopiedGeoLayerID` parameter functions as expected.|
|`test-CopyGeoLayer-Points-BothAttributeParameters-ExpectFail.gp`|Tests that an `ERROR` is thrown when both the `IncludeAttributes` and the `ExcludeAttributes` parameters are configured/enabled.|
|`test-CopyGeoLayer-Points-ExcludeAttributes.gp`|Tests copying a multi-feature, multi-attribute `POINTS` GeoLayer. Tests that the `ExcludeAttributes` parameter functions as expected.| 
|`test-CopyGeoLayer-Points-IncludeAttributes.gp`|Tests copying a multi-feature, multi-attribute `POINTS` GeoLayer. Tests that the `IncludeAttributes` parameter functions as expected.| 
|`test-CopyGeoLayer-Points-IncludeFeaturesIf.gp`|Tests copying a multi-feature, multi-attribute `POINTS` GeoLayer. Tests that the `IncludeFeaturesIf` parameter functions as expected.| 