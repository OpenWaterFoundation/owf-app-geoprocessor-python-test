StartLog(LogFile="results/test-ReadGeoLayersFromFGDB-OnlyOne-polygon-Properties.gp.log")
# Test reading a GeoLayer from a the feature classes of a file geodatabase
# - read a feature class with POLYGON geometry
# - read only one specific GeoLayer
# - set Properties during read and confirm that the properties are set
# - also test ${Property}
#
# Remove the result polygon geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayersFromFGDB-OnlyOne-polygon-Properties-out.geojson",IfSourceFileNotFound="Ignore")
# Set a property to test ${Property} notation in GeoLayer properties
SetProperty(PropertyName="testString",PropertyType="str",PropertyValue="test string")
# Read the `polygon` feature class from the file geodatabase
ReadGeoLayersFromFGDB(InputFolder="data/ReadGeoLayersFromFGDB-test.gdb",ReadOnlyOneFeatureClass="True",FeatureClass="polygon",GeoLayerID="polygon",Properties="i:i,s:'some string',propTest:${testString}")
# Uncomment the next line to reproduce the expected results
# WriteGeoLayerPropertiesToFile(GeoLayerID="polygon",OutputFile="expected-results/test-ReadGeoLayersFromFGDB-OnlyOne-polygon-Properties-out.txt",FileFormat="NameValue")
# Write the polygon Geolayer properties
WriteGeoLayerPropertiesToFile(GeoLayerID="polygon",OutputFile="results/test-ReadGeoLayersFromFGDB-OnlyOne-polygon-Properties-out.txt",FileFormat="NameValue")
# Compare the results to the expected results
CompareFiles(InputFile1="results/test-ReadGeoLayersFromFGDB-OnlyOne-polygon-Properties-out.txt",InputFile2="expected-results/test-ReadGeoLayersFromFGDB-OnlyOne-polygon-Properties-out.txt",IfDifferent="Warn")