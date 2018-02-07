# SimplifyGeoLayerGeometry Tests

|Test|Description|
|----|-----|
|`test-SimplifyGeoLayerGeometry-Line-Tolerance50.gp`|Tests that a `LINE` GeoLayer (`NAD83 Zone 13N`) can be simplified. Tolerance set to 50 meters.|
|`test-SimplifyGeoLayerGeometry-Point-ExpectFail.gp`|Tests that a `POINT` GeoLayer (`WGS84`) cannot be simplified. Expect `FAILURE`.|
|`test-SimplifyGeoLayerGeometry-Polygon-Tolerance100.gp`|Tests that a `POLYGON` GeoLayer (`NAD83 Zone 13N`) can be simplified. Tolerance set to 100 meters. Results used in User Documentation.|
|`test-SimplifyGeoLayerGeometry-Polygon-Tolerance1000.gp`|Tests that a `POLYGON` GeoLayer (`NAD83 Zone 13N`) can be simplified. Tolerance set to 1000 meters.Results used in User Documentation.|