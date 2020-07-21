StartLog(LogFile="results/test-RasterizeGeoLayer-polygon-GeoUnits-OutputFile.gp.log")
# Test creating a raster GeoLayer from a vector GeoJSON
# - input layer is a polygon layer
# - specify output file
# Remove the result polygon geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-RasterizeGeoLayer-polygon-GeoUnits-OutputFile-out.geojson",IfSourceFileNotFound="Ignore")
# Read the polygon GeoJSON (with GeoLayerID of "polygon") into the GeoProcessor
ReadGeoLayerFromGeoJSON(InputFile="data/polygon.geojson",GeoLayerID="polygon")
# Create a raster GeoLayer from vector GeoLayer
RasterizeGeoLayer(GeoLayerID="polygon",Attribute="id",OutputFile="results/rasterpolygon.tif",CellValueType="Byte",RasterUnits="GeoUnits",CellWidth=".01",CellHeight=".01",IfGeoLayerIDExists="Replace")
ReadRasterGeoLayerFromFile(InputFile="results/rasterpolygon.tif",GeoLayerID="rasterpolygon")
# Uncomment the line below to recreate the expected results
# WriteRasterGeoLayerToFile(GeoLayerID="rasterpolygon",OutputFile="expected-results/test-RasterizeGeoLayer-polygon-GeoUnits-OutputFile-out.tif")
# Write the polygon Geolayer to a GeoJSON file
WriteRasterGeoLayerToFile(GeoLayerID="rasterpolygon",OutputFile="results/test-RasterizeGeoLayer-polygon-GeoUnits-OutputFile-out.tif")
# Compare the results to the expected results - can compare tif files for binary equal
CompareFiles(InputFile1="expected-results/test-RasterizeGeoLayer-polygon-GeoUnits-OutputFile-out.tif",InputFile2="results/test-RasterizeGeoLayer-polygon-GeoUnits-OutputFile-out.tif",IfDifferent="Warn")