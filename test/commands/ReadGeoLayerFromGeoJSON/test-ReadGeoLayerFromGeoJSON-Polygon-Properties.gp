StartLog(LogFile="results/test-ReadGeoLayerFromGeoJSON-Polygon-Properties.gp.log")
# Test reading a GeoLayer from a GeoJSON
# - GeoJSON is a polygon layer
# - set Properties during read and confirm that the properties are set
# - also test ${Property}
# Remove the result polygon geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayerFromGeoJSON-Polygon-Properties-out.geojson",IfSourceFileNotFound="Ignore")
# Set a property to test ${Property} notation in GeoLayer properties
SetProperty(PropertyName="testString",PropertyType="str",PropertyValue="test string")
# Read the polygon GeoJSON (with GeoLayerID of "polygon") into the GeoProcessor
ReadGeoLayerFromGeoJSON(InputFile="data/polygon.geojson",GeoLayerID="polygon",Properties="i:i,s:'some string',propTest:${testString}")
# Uncomment the line below to recreate the expected results
# WriteGeoLayerPropertiesToFile(GeoLayerID="polygon",OutputFile="expected-results/test-ReadGeoLayerFromGeoJSON-Polygon-Properties-out.txt",FileFormat="NameValue")
# Write the polygon Geolayer to a GeoJSON file
WriteGeoLayerPropertiesToFile(GeoLayerID="polygon",OutputFile="results/test-ReadGeoLayerFromGeoJSON-Polygon-Properties-out.txt",FileFormat="NameValue")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-ReadGeoLayerFromGeoJSON-Polygon-Properties-out.txt",InputFile2="results/test-ReadGeoLayerFromGeoJSON-Polygon-Properties-out.txt",IfDifferent="Warn")