StartLog(LogFile="results/test-CreateGeoLayerFromGeometry-WKB-Point.gp.log")
# Test creating a GeoLayer from input geometry data
# - GeometryFormat: Well-Known Binary (WKB)
# - Geometry Type: single-feature point
# - CRS: WGS84
# - expect FAIL until upgraded to QGIS 3
#@expectedStatus Failure
#
# Remove the result geojson file from the last run of the test, if existing.
RemoveFile(SourceFile="results/test-CreateGeoLayerFromGeometry-WKB-point-out.geojson",IfSourceFileNotFound="Ignore")
# Create a GeoLayer from WKB in WGS84 (EPSG:4326).
CreateGeoLayerFromGeometry(NewGeoLayerID="point",GeometryFormat="WKB",GeometryData="000000000140000000000000004010000000000000",CRS="EPSG:4326")
# Uncomment the line below to recreate the expected results. 
#WriteGeoLayerToGeoJSON(GeoLayerID="point",OutputFile="expected-results/test-CreateGeoLayerFromGeometry-WKB-Point-out.geojson")
# Write the copied Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="point",OutputFile="results/test-CreateGeoLayerFromGeometry-WKB-Point-out.geojson")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-CreateGeoLayerFromGeometry-WKB-Point-out.geojson",InputFile2="results/test-CreateGeoLayerFromGeometry-WKB-Point-out.geojson",IfDifferent="Warn")
