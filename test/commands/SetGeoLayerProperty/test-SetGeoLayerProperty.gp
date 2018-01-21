StartLog(LogFile="results/test-SetGeoLayerProperty.gp.log")
# Test setting GeoLayer properties
# - need to enhance to set different properties and write to a file
# Read a layer
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/point.geojson", GeoLayerID="point")
SetGeoLayerProperty(GeoLayerID="point",PropertyName="TestSetGeoLayerProperty_str",PropertyType="str",PropertyValue="Test string value")
SetGeoLayerProperty(GeoLayerID="point",PropertyName="TestSetGeoLayerProperty_float",PropertyType="float",PropertyValue="1.2345")
SetGeoLayerProperty(GeoLayerID="point",PropertyName="TestSetGeoLayerProperty_int",PropertyType="int",PropertyValue="12345")
SetGeoLayerProperty(GeoLayerID="point",PropertyName="TestSetGeoLayerProperty_bool",PropertyType="bool",PropertyValue="True")
# Uncomment the following line to regenerate expected results
# Need a way to write the properties to a file to complete the test
