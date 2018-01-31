StartLog(LogFile="results/test-SetGeoLayerCRS-Reproject.gp.log")
# - Test repojecting a GeoLayer from EPSG:4326 (WGS84) to EPSG:102003 (USA Contiguous Albers Equal Area Conic)
# Remove the result file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-SetGeoLayerCRS-Reproject-out.geojson", IfSourceFileNotFound="Ignore")
# Read the line GeoJSON (with GeoLayerID of "line") into the GeoProcessor
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/line.geojson", GeoLayerID="line")
# Reproject the layer
SetGeoLayerCRS(GeoLayerID="line", CRS="EPSG:102003")
# Uncomment the line below to recreate the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="line", OutputFile="expected-results/test-SetGeoLayerCRS-Reproject-out")
# Write the Geolayer to a GeoJSON file  
WriteGeoLayerToGeoJSON(GeoLayerID="line", OutputFile="results/test-SetGeoLayerCRS-Reproject-out")
# Compare the results with the expected results
CompareFiles(InputFile1="expected-results/test-SetGeoLayerCRS-Reproject-out.geojson", InputFile2="results/test-SetGeoLayerCRS-Reproject-out.geojson",IfDifferent="Warn")