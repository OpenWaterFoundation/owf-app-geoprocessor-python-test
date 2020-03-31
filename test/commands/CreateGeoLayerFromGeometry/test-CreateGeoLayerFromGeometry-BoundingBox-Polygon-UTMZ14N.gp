StartLog(LogFile="results/test-CreateGeoLayerFromGeometry-BoundingBox-Polygon-UTMZ14N.gp.log")
# Test creating a GeoLayer from input geometry data
# - GeometryFormat: BoundingBox
# - Geometry Type: single-feature polygon
# - CRS: NAD83 UTM Zone 14N
# Remove the result geojson file from the last run of the test, if existing.
RemoveFile(SourceFile="results/test-CreateGeoLayerFromGeometry-BoundingBox-Polygon-UTMZ14N-out.geojson",IfSourceFileNotFound="Ignore")
# Create a GeoLayer from bounding box coordinates in NAD83 UTM Zone14N (EPSG:26914).
CreateGeoLayerFromGeometry(NewGeoLayerID="dallas_bounds_nad83",GeometryFormat="BoundingBox",GeometryData="611903,3580541,757772,3688789",CRS="EPSG:26914")
# Uncomment the line below to recreate the expected results.
# WriteGeoLayerToGeoJSON(GeoLayerID="dallas_bounds_nad83",OutputFile="expected-results/test-CreateGeoLayerFromGeometry-BoundingBox-Polygon-UTMZ14N-out.geojson")
# Write the copied Geolayer to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="dallas_bounds_nad83",OutputFile="results/test-CreateGeoLayerFromGeometry-BoundingBox-Polygon-UTMZ14N-out.geojson")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-CreateGeoLayerFromGeometry-BoundingBox-Polygon-UTMZ14N-out.geojson",InputFile2="results/test-CreateGeoLayerFromGeometry-BoundingBox-Polygon-UTMZ14N-out.geojson",IfDifferent="Warn")