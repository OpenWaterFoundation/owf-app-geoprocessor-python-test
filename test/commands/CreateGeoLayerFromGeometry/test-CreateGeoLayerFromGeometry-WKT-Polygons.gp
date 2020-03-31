StartLog(LogFile="results/test-CreateGeoLayerFromGeometry-WKT-Polygons.gp.log")
# Test creating a GeoLayer from input geometry data
# - GeometryFormat: Well-Known Text (WKT)
# - Geometry Type: multi-feature polygon
# - CRS: WGS84
# Remove the result geojson file from the last run of the test, if existing.
RemoveFile(SourceFile="results/test-CreateGeoLayerFromGeometry-WKT-Polygons-out.geojson",IfSourceFileNotFound="Ignore")
# Create a GeoLayer from WKT in WGS84 (EPSG:4326).
CreateGeoLayerFromGeometry(NewGeoLayerID="polygons",Name="polygons",GeometryFormat="WKT",GeometryData="MULTIPOLYGON (((30 20, 45 40, 10 40, 30 20)),((15 5, 40 10, 10 20, 5 10, 15 5)))",CRS="EPSG:4326")
# Uncomment the line below to recreate the expected results.
# WriteGeoLayerToGeoJSON(GeoLayerID="polygons",OutputFile="expected-results/test-CreateGeoLayerFromGeometry-WKT-Polygons-out.geojson")
# Write the copied Geolayer to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="polygons",OutputFile="results/test-CreateGeoLayerFromGeometry-WKT-Polygons-out.geojson")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-CreateGeoLayerFromGeometry-WKT-Polygons-out.geojson",InputFile2="results/test-CreateGeoLayerFromGeometry-WKT-Polygons-out.geojson",IfDifferent="Warn")