StartLog(LogFile="results/test-WriteGeoLayerToDelimitedFile-Points-OutputCRS.gp.log")
# Test writing a GeoLayer to a delimited file. 
# - testing with a POINTS layer (in WGS84|EPSG:4326)
# - testing the functionality of the OutputCRS parameter
# - output the delimited csv file geomertries in NAD83 UTM ZONE 13N (EPSG:26913)
# Remove the result line geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-WriteGeoLayerToDelimitedFile-Points-OutputCRS-out.geojson",IfSourceFileNotFound="Ignore")
# Read the POINTS GeoJSON (with GeoLayerID of "points") into the GeoProcessor 
ReadGeoLayerFromGeoJSON(InputFile="data/points.geojson",GeoLayerID="points")
# Uncomment below line to recreate expected results
#WriteGeoLayerToDelimitedFile(GeoLayerID="points",OutputFile="expected-results\test-WriteGeoLayerToDelimitedFile-Points-OutputCRS-out",OutputCRS="EPSG:26913")
# Write the line Geolayer to a GeoJSON file 
WriteGeoLayerToDelimitedFile(GeoLayerID="points",OutputFile="results\test-WriteGeoLayerToDelimitedFile-Points-OutputCRS-out",OutputCRS="EPSG:26913")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-WriteGeoLayerToDelimitedFile-Points-OutputCRS-out.csv",InputFile2="results/test-WriteGeoLayerToDelimitedFile-Points-OutputCRS-out.csv",IfDifferent="Warn")
