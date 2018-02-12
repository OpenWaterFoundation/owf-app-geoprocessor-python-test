StartLog(LogFile="results/test-CreateGeoLayerFromGeometry-WKT-Line.gp.log")
# Test creating a GeoLayer from input geometry data
# 	- GeometryFormat: Well-Known Text (WKT)
#	- Geometry Type: single-feature line
#	- CRS: WGS84
# Remove the result geojson file from the last run of the test, if existing.
RemoveFile(SourceFile="results/test-CreateGeoLayerFromGeometry-WKT-line-out.geojson", IfSourceFileNotFound="Ignore")
# Create a GeoLayer from WKT in WGS84 (EPSG:4326).
CreateGeoLayerFromGeometry(NewGeoLayerID = "line", GeometryFormat = "WKT", GeometryData = "LINESTRING (30 10, 10 30, 40 40)", CRS="EPSG:4326")
# Uncomment the line below to recreate the expected results. 
#WriteGeoLayerToGeoJSON(GeoLayerID="line", OutputFile="expected-results/test-CreateGeoLayerFromGeometry-WKT-Line-out.geojson")
# Write the copied Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="line", OutputFile="results/test-CreateGeoLayerFromGeometry-WKT-Line-out.geojson")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-CreateGeoLayerFromGeometry-WKT-Line-out.geojson", InputFile2="results/test-CreateGeoLayerFromGeometry-WKT-Line-out.geojson",IfDifferent="Warn")