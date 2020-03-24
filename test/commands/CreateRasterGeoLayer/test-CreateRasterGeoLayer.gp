StartLog(LogFile="results/test-CreateRasterGeoLayer.gp.log")
# Test creating a raster GeoLayer from basic information:
# - number of rows and columns
# - CRS: WGS84
# Remove the result geojson file from the last run of the test, if existing.
RemoveFile(SourceFile="results/test-CreateRasterGeoLayer-out.geojson",IfSourceFileNotFound="Ignore")
# Create a GeoLayer from WKT in WGS84 (EPSG:4326).
CreateRasterGeoLayerFromGeometry(NewGeoLayerID="point",GeometryFormat="WKT",GeometryData="POINT (30 10)",CRS="EPSG:4326")
# Uncomment the line below to recreate the expected results. 
#WriteRasterGeoLayerToFile(GeoLayerID="point",OutputFile="expected-results/test-CreateRasterGeoLayer-out.geojson")
# Write the copied Geolayer to a GeoJSON file 
WriteRasterGeoLayerToFile(GeoLayerID="point",OutputFile="results/test-CreateRasterGeoLayer-out.geojson")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-CreateRasterGeoLayer-out.geojson",InputFile2="results/test-CreateRasterGeoLayer-out.geojson",IfDifferent="Warn")
