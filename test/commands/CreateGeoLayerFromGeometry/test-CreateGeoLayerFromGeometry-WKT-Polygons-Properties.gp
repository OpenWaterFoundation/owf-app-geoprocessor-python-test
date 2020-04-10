StartLog(LogFile="results/test-CreateGeoLayerFromGeometry-WKT-Polygons-Properties.gp.log")
# Test creating a GeoLayer from input geometry data
# - GeometryFormat: Well-Known Text (WKT)
# - Geometry Type: multi-feature polygon
# - CRS: WGS84
# - set Properties during read and confirm that the properties are set
# - also test ${Property}
# Remove the result geojson file from the last run of the test, if existing.
RemoveFile(SourceFile="results/test-CreateGeoLayerFromGeometry-WKT-Polygons-Properties-out.geojson",IfSourceFileNotFound="Ignore")
# Set a property to test ${Property} notation in GeoLayer properties
SetProperty(PropertyName="testString",PropertyType="str",PropertyValue="test string")
# Create a GeoLayer from WKT in WGS84 (EPSG:4326).
CreateGeoLayerFromGeometry(NewGeoLayerID="polygons",Name="polygons",GeometryFormat="WKT",GeometryData="MULTIPOLYGON (((30 20, 45 40, 10 40, 30 20)),((15 5, 40 10, 10 20, 5 10, 15 5)))",CRS="EPSG:4326",Properties="i:i,s:'some string',propTest:${testString}")
# Uncomment the line below to recreate the expected results.
# WriteGeoLayerPropertiesToFile(GeoLayerID="polygons",OutputFile="expected-results/test-CreateGeoLayerFromGeometry-WKT-Polygons-Properties-out.txt",FileFormat="NameValue")
# Write the copied Geolayer to a GeoJSON file
WriteGeoLayerPropertiesToFile(GeoLayerID="polygons",OutputFile="results/test-CreateGeoLayerFromGeometry-WKT-Polygons-Properties-out.txt",FileFormat="NameValue")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-CreateGeoLayerFromGeometry-WKT-Polygons-Properties-out.txt",InputFile2="results/test-CreateGeoLayerFromGeometry-WKT-Polygons-Properties-out.txt",IfDifferent="Warn")