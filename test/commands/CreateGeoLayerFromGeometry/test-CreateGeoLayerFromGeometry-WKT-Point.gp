StartLog(LogFile="results/test-CreateGeoLayerFromGeometry-WKT-Point.gp.log")
# Test creating a GeoLayer from input geometry data
# 	- GeometryFormat: Well-Known Text (WKT)
#	- Geometry Type: single-feature point
#	- CRS: WGS84
# Remove the result geojson file from the last run of the test, if existing.
RemoveFile(SourceFile="results/test-CreateGeoLayerFromGeometry-WKT-point-out.geojson", IfSourceFileNotFound="Ignore")
# Create a GeoLayer from WKT in WGS84 (EPSG:4326).
CreateGeoLayerFromGeometry(NewGeoLayerID = "point", GeometryFormat = "WKT", GeometryData = "POINT (30 10)", CRS="EPSG:4326")
# Uncomment the line below to recreate the expected results. 
#WriteGeoLayerToGeoJSON(GeoLayerID="point", OutputFile="expected-results/test-CreateGeoLayerFromGeometry-WKT-Point-out.geojson")
# Write the copied Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="point", OutputFile="results/test-CreateGeoLayerFromGeometry-WKT-Point-out.geojson")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-CreateGeoLayerFromGeometry-WKT-Point-out.geojson", InputFile2="results/test-CreateGeoLayerFromGeometry-WKT-Point-out.geojson",IfDifferent="Warn")