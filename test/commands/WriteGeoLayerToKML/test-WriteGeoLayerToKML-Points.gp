StartLog(LogFile="results/test-WriteGeoLayerToKML-Points.gp.log")
# Test writing a GeoLayer to a KML file
# - tests with a points layer (in WGS84|EPSG:4326)
# - all default optional parameters
#
# Remove the result points kml file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-WriteGeoLayerToKML-Points-out.kml",IfSourceFileNotFound="Ignore")
# Read the points GeoJSON (with GeoLayerID of "points") into the GeoProcessor 
ReadGeoLayerFromGeoJSON(InputFile="data/points.geojson",GeoLayerID="points")
# Uncomment below line to recreate expected results
#WriteGeoLayerToKML(GeoLayerID="points",OutputFile="expected-results/test-WriteGeoLayerToKML-Points-out")
# Write the points Geolayer to a KML file 
WriteGeoLayerToKML(GeoLayerID="points",OutputFile="results/test-WriteGeoLayerToKML-Points-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-WriteGeoLayerToKML-Points-out.kml",InputFile2="results/test-WriteGeoLayerToKML-Points-out.kml",IfDifferent="Warn")
