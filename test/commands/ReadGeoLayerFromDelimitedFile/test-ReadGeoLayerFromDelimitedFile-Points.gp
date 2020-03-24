StartLog(LogFile="results/test-ReadGeoLayerFromDelimitedFile-Points.gp.log")
# Test reading a GeoLayer from a delimited file. 
# - testing with a POINTS layer (in WGS84|EPSG:4326)
# - the POINTS delimited file is in XY format
# Remove the result line geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayerFromDelimitedFile-Points-out.geojson",IfSourceFileNotFound="Ignore")
# Read the POINTS delimited file (with GeoLayerID of "points") into the GeoProcessor 
ReadGeoLayerFromDelimitedFile(InputFile="data/points-XY.csv",Delimiter=",",GeometryFormat="XY",XColumn="X",YColumn="Y",CRS="EPSG:4326",GeoLayerID="points")
# Uncomment below line to recreate expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="points",OutputFile="expected-results/test-ReadGeoLayerFromDelimitedFile-Points-out")
# Write the line Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="points",OutputFile="results/test-ReadGeoLayerFromDelimitedFile-Points-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-ReadGeoLayerFromDelimitedFile-Points-out.geojson",InputFile2="results/test-ReadGeoLayerFromDelimitedFile-Points-out.geojson",IfDifferent="Warn")
