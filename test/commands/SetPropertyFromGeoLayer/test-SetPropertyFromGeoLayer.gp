StartLog(LogFile="results/test-SetPropertyFromGeoLayer.gp.log")
# Test setting a processor property from a GeoLayer
# - Set properties on the GeoLayer of various types
# - Then copy from the GeoLayer to the processor
# - The write the output file for comparison
# First read a layer and set properties on the GeoLayer
RemoveFile(SourceFile="results/test-SetPropertyFromGeoLayer-out.txt",IfSourceFileNotFound="Ignore")
ReadGeoLayerFromGeoJSON(InputFile="data/point.geojson",GeoLayerID="point")
SetGeoLayerProperty(GeoLayerID="point",PropertyName="TestSetPropertyFromGeoLayer_str",PropertyType="str",PropertyValue="Test string value")
SetGeoLayerProperty(GeoLayerID="point",PropertyName="TestSetPropertyFromGeoLayer_float",PropertyType="float",PropertyValue="1.2345")
SetGeoLayerProperty(GeoLayerID="point",PropertyName="TestSetPropertyFromGeoLayer_int",PropertyType="int",PropertyValue="12345")
SetGeoLayerProperty(GeoLayerID="point",PropertyName="TestSetPropertyFromGeoLayer_bool",PropertyType="bool",PropertyValue="True")
# Next set processor properties from the GeoLayer properties
SetPropertyFromGeoLayer(GeoLayerID="point",GeoLayerPropertyName="TestSetPropertyFromGeoLayer_str",PropertyName="TestSetPropertyFromGeoLayer_str")
SetPropertyFromGeoLayer(GeoLayerID="point",GeoLayerPropertyName="TestSetPropertyFromGeoLayer_float",PropertyName="TestSetPropertyFromGeoLayer_float")
SetPropertyFromGeoLayer(GeoLayerID="point",GeoLayerPropertyName="TestSetPropertyFromGeoLayer_int",PropertyName="TestSetPropertyFromGeoLayer_int")
SetPropertyFromGeoLayer(GeoLayerID="point",GeoLayerPropertyName="TestSetPropertyFromGeoLayer_bool",PropertyName="TestSetPropertyFromGeoLayer_bool")
# Uncomment the following two commands to regenerate the expected results file.
#WritePropertiesToFile(OutputFile="expected-results/test-SetPropertyFromGeoLayer-out.txt",IncludeProperties="TestSetPropertyFromGeoLayer*",FileFormat="NameValue",SortOrder="Ascending")
# Generate new output...
WritePropertiesToFile(OutputFile="results/test-SetPropertyFromGeoLayer-out.txt",IncludeProperties="TestSetPropertyFromGeoLayer*",FileFormat="NameValue",SortOrder="Ascending")
# Do regression comparison...
CompareFiles(InputFile1="expected-results/test-SetPropertyFromGeoLayer-out.txt",InputFile2="results/test-SetPropertyFromGeoLayer-out.txt",IfDifferent="Warn")
