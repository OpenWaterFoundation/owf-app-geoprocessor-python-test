# ReadGeoLayersFromFolder Tests
|Test|Description|
|----|-----|
|`test-ReadGeoLayersFromFolder-AllowedDiffCount2`|Tests reading a GeoLayer from a folder. The folder contains a `LINE` GeoJSON, a `POLYGON` shapefile and a `POINT` text file. Allows for two differences (shapefile's `.dbf` and `.cpg` files).|
|`test-ReadGeoLayersFromFolder-GeoLayerID_prefix-line-AllowedDiffCount2`|Tests that the `GeoLayerID_prefix` parameter adds the prefix to the GeoLayerID. Allows for two differences (GeoJSON name and GeoJSON precision).|
|`test-ReadGeoLayersFromFolder-Subset_Pattern-ExpectFail`|Tests that the `Subset_Pattern` parameter restricts reading in the `LINE` geojson as a GeoLayer. Expects fail - only passes globally if it fails locally.|