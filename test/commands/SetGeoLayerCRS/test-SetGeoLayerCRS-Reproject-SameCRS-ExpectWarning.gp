StartLog(LogFile="results/test-SetGeoLayerCRS-Reproject-SameCRS-ExpectWarning.gp.log")
# Test repojecting a GeoLayer from EPSG:4326 (WGS84) to EPSG:4326 (WGS84) 
# - expect WARNING because the GeoLayer is being reprojected into the same CRS
#@expectedStatus Warning
# Remove the result file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-SetGeoLayerCRS-Reproject-SameCRS-ExpectWarning-out.geojson", IfSourceFileNotFound="Ignore")
# Read the line GeoJSON (with GeoLayerID of "line") into the GeoProcessor
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/line.geojson", GeoLayerID="line")
# Reproject the layer
SetGeoLayerCRS(GeoLayerID="line", CRS="EPSG:4326")
# Uncomment the line below to recreate the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="line", OutputFile="expected-results/test-SetGeoLayerCRS-Reproject-SameCRS-ExpectWarning-out")
# Write the Geolayer to a GeoJSON file  
WriteGeoLayerToGeoJSON(GeoLayerID="line", OutputFile="results/test-SetGeoLayerCRS-Reproject-SameCRS-ExpectWarning-out")
# Compare the results with the expected results
CompareFiles(InputFile1="expected-results/test-SetGeoLayerCRS-Reproject-SameCRS-ExpectWarning-out.geojson", InputFile2="results/test-SetGeoLayerCRS-Reproject-SameCRS-ExpectWarning-out.geojson",IfDifferent="Warn")