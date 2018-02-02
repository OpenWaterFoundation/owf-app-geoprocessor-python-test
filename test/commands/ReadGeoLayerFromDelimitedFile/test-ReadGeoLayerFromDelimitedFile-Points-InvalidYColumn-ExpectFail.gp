StartLog(LogFile="results/test-ReadGeoLayerFromDelimitedFile-Points-InvalidYColumn-ExpectFail.gp.log")
# Test reading a GeoLayer from a delimited file. 
# - testing with a POINTS layer (in WGS84|EPSG:4326)
# - the POINTS delimited file is in XY format
# - testing that a FAILURE log is raised when the YColumnName is not a valid column name
#@expectedStatus Failure
# Read the POINTS delimited file (with GeoLayerID of "points") into the GeoProcessor 
ReadGeoLayerFromDelimitedFile(DelimitedFile="data/points-XY.csv", Delimiter=",", GeometryType="XY", XColumnName="X", YColumnName="Invalid", CRS="EPSG:4326", GeoLayerID = "points")
