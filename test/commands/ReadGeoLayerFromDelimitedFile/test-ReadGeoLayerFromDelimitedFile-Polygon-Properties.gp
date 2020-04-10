StartLog(LogFile="results/test-ReadGeoLayerFromDelimitedFile-Polygon-Properties.gp.log")
# Test reading a GeoLayer from a delimited file.
# - testing with a POLYGON layer (in WGS84|EPSG:4326)
# - the POLYGON delimited file is in WKT format
# - the delimiter is a semicolon rathen than a comma
# - set Properties during read and confirm that the properties are set
# - also test ${Property}
# Remove the result line geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayerFromDelimitedFile-Polygon-Properties-out.geojson",IfSourceFileNotFound="Ignore")
# Set a property to test ${Property} notation in GeoLayer properties
SetProperty(PropertyName="testString",PropertyType="str",PropertyValue="test string")
# Read the POLYGON delimited file (with GeoLayerID of "polygon") into the GeoProcessor
ReadGeoLayerFromDelimitedFile(InputFile="data/polygon-WKT.csv",Delimiter=";",GeometryFormat="WKT",WKTColumn="WKT",CRS="EPSG:4326",GeoLayerID="polygon",Properties="i:i,s:'some string',propTest:${testString}")
# Uncomment below line to recreate expected results
# WriteGeoLayerPropertiesToFile(GeoLayerID="polygon",OutputFile="expected-results/test-ReadGeoLayerFromDelimitedFile-Polygon-Properties-out.txt",FileFormat="NameValue")
# Write the line Geolayer to a GeoJSON file
WriteGeoLayerPropertiesToFile(GeoLayerID="polygon",OutputFile="results/test-ReadGeoLayerFromDelimitedFile-Polygon-Properties-out.txt",FileFormat="NameValue")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-ReadGeoLayerFromDelimitedFile-Polygon-Properties-out.txt",InputFile2="results/test-ReadGeoLayerFromDelimitedFile-Polygon-Properties-out.txt",IfDifferent="Warn")