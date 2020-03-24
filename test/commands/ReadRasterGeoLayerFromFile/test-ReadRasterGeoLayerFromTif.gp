StartLog(LogFile="results/test-ReadRasterGeoLayerFromTif-Point.gp.log")
# Test reading a raster GeoLayer from a TIF 
# Remove the result point GeoJSON from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadRasterGeoLayerFromTif-out.geojson",IfSourceFileNotFound="Ignore")
# Read the TIF (with GeoLayerID of "point") into the GeoProcessor 
ReadRasterGeoLayerFromTif(InputFile="data/point.shp",GeoLayerID="point")
# Uncomment the line below to recreate the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="point",OutputFile="expected-results/test-ReadRasterGeoLayerFromTif-Point-out")
# Write the point Geolayer to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="point",OutputFile="results/test-ReadRasterGeoLayerFromTif-Point-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-ReadRasterGeoLayerFromTif-Point-out.geojson",InputFile2="results/test-ReadRasterGeoLayerFromTif-Point-out.geojson",IfDifferent="Warn")
