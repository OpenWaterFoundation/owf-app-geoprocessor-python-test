StartLog(LogFile="results/test-ReadGeoLayerFromDelimitedFile-Polygon.gp.log")
# Test reading a GeoLayer from a delimited file.
# - testing with a POLYGON layer (in WGS84|EPSG:4326)
# - the POLYGON delimited file is in WKT format
# - the delimiter is a semicolon rathen than a comma
# Remove the result line geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayerFromDelimitedFile-Polygon-out.geojson",IfSourceFileNotFound="Ignore")
# Read the POLYGON delimited file (with GeoLayerID of "polygon") into the GeoProcessor
ReadGeoLayerFromDelimitedFile(InputFile="data/polygon-WKT.csv",Delimiter=";",GeometryFormat="WKT",WKTColumn="WKT",CRS="EPSG:4326",GeoLayerID="polygon")
# Uncomment below line to recreate expected results
# WriteGeoLayerToGeoJSON(GeoLayerID="polygon",OutputFile="expected-results/test-ReadGeoLayerFromDelimitedFile-Polygon-out")
# Write the line Geolayer to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="polygon",OutputFile="results/test-ReadGeoLayerFromDelimitedFile-Polygon-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-ReadGeoLayerFromDelimitedFile-Polygon-out.geojson",InputFile2="results/test-ReadGeoLayerFromDelimitedFile-Polygon-out.geojson",IfDifferent="Warn")