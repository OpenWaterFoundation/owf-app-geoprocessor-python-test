StartLog(LogFile="results/test-WriteGeoLayerPropertiesToFile.gp.log")
# Test writing GeoLayer properties to a file
# - set properties of different types
# Read a layer
RemoveFile(SourceFile="results/test-WritePropertiesToFile-IncludeProperties-NameValue-Ascending-out.txt",IfSourceFileNotFound="Ignore")
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/point.geojson", GeoLayerID="point")
SetGeoLayerProperty(GeoLayerID="point",PropertyName="TestWriteGeoLayerPropertiesToFile_str",PropertyType="str",PropertyValue="Test string value")
SetGeoLayerProperty(GeoLayerID="point",PropertyName="TestWriteGeoLayerPropertiesToFile_float",PropertyType="float",PropertyValue="1.2345")
SetGeoLayerProperty(GeoLayerID="point",PropertyName="TestWriteGeoLayerPropertiesToFile_int",PropertyType="int",PropertyValue="12345")
SetGeoLayerProperty(GeoLayerID="point",PropertyName="TestWriteGeoLayerPropertiesToFile_bool",PropertyType="bool",PropertyValue="True")
# Uncomment the following two commands to regenerate the expected results file.
#WriteGeoLayerPropertiesToFile(GeoLayerID="point",OutputFile="expected-results/test-WriteGeoLayerPropertiesToFile-IncludeProperties-NameValue-Ascending-out.txt",IncludeProperties="TestWriteGeoLayerPropertiesToFile*",FileFormat="NameValue",SortOrder="Ascending")
# Generate new output...
WriteGeoLayerPropertiesToFile(GeoLayerID="point",OutputFile="results/test-WriteGeoLayerPropertiesToFile-IncludeProperties-NameValue-Ascending-out.txt",IncludeProperties="TestWriteGeoLayerPropertiesToFile*",FileFormat="NameValue",SortOrder="Ascending")
# Do regression comparison...
CompareFiles(InputFile1="expected-results\test-WriteGeoLayerPropertiesToFile-IncludeProperties-NameValue-Ascending-out.txt",InputFile2="results/test-WriteGeoLayerPropertiesToFile-IncludeProperties-NameValue-Ascending-out.txt",IfDifferent="Warn")
