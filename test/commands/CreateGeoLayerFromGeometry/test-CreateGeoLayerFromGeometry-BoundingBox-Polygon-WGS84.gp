StartLog(LogFile="results/test-CreateGeoLayerFromGeometry-BoundingBox-Polygon-WGS84.gp.log")
# Test creating a GeoLayer from input geometry data
# - GeometryFormat: BoundingBox
# - Geometry Type: single-feature polygon
# - CRS: WGS84
#@docExample
# Remove the result geojson file from the last run of the test, if existing.
RemoveFile(SourceFile="results/test-CreateGeoLayerFromGeometry-BoundingBox-Polygon-WGS84-out.geojson",IfSourceFileNotFound="Ignore")
# Create a GeoLayer from bounding box coordinates in WGS84 (EPSG:4326).
CreateGeoLayerFromGeometry(NewGeoLayerID="dallas_bounds_wgs84",GeometryFormat="BoundingBox",GeometryData="-97.8,32.35,-96.25,33.32",CRS="EPSG:4326")
# Uncomment the line below to recreate the expected results.
#WriteGeoLayerToGeoJSON(GeoLayerID="dallas_bounds_wgs84",OutputFile="expected-results/test-CreateGeoLayerFromGeometry-BoundingBox-Polygon-WGS84-out.geojson")
# Write the copied Geolayer to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="dallas_bounds_wgs84",OutputFile="results/test-CreateGeoLayerFromGeometry-BoundingBox-Polygon-WGS84-out.geojson")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-CreateGeoLayerFromGeometry-BoundingBox-Polygon-WGS84-out.geojson",InputFile2="results/test-CreateGeoLayerFromGeometry-BoundingBox-Polygon-WGS84-out.geojson",IfDifferent="Warn")