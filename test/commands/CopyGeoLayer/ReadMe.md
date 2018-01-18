# CopyGeoLayer Tests
|Test|Description|
|----|-----|
|`test-CopyGeoLayer-Line-AllowedDiffCount2`|Tests copying a GeoLayer (single line feature). Line GeoJSON is read into the GeoProcessor and then copied. The copied GeoLayer is written out in GeoJSON format. The input and output GeoJSON files are compared. Allows for two differences (GeoJSON name and GeoJSON precision).|
|`test-CopyGeoLayer-Line-AllowedDiffCount2-CopiedGeoLayerID`|Tests that the `CopiedGeoLayerID` parameter is functioning as desired.|