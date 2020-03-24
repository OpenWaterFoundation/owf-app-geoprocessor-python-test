StartLog(LogFile="results/test-ReadGeoLayerFromDelimitedFile-Line.gp.log")
# Test reading a GeoLayer from a delimited file. 
# - testing with a LINE layer (in WGS84|EPSG:4326)
# - the LINE delimited file is in WKT format
# Remove the result line geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayerFromDelimitedFile-Line-out.geojson",IfSourceFileNotFound="Ignore")
# Read the LINE delimited file (with GeoLayerID of "line") into the GeoProcessor 
ReadGeoLayerFromDelimitedFile(InputFile="data/line-WKT.csv",Delimiter=",",GeometryFormat="WKT",WKTColumn="WKT",CRS="EPSG:4326",GeoLayerID="line")
# Uncomment below line to recreate expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="line",OutputFile="expected-results/test-ReadGeoLayerFromDelimitedFile-Line-out")
# Write the line Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="line",OutputFile="results/test-ReadGeoLayerFromDelimitedFile-Line-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-ReadGeoLayerFromDelimitedFile-Line-out.geojson",InputFile2="results/test-ReadGeoLayerFromDelimitedFile-Line-out.geojson",IfDifferent="Warn")
