StartLog(LogFile="results/test-ReadRasterGeoLayerFromFile-tif.gp.log")
# Test reading a raster GeoLayer from a GeoTiff file
# Remove the result file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadRasterGeoLayerFromFile-tif-out.tif",IfSourceFileNotFound="Ignore")
# Read the raster GeoTiff into the GeoProcessor
ReadRasterGeoLayerFromFile(InputFile="data/cea.tif",GeoLayerID="test-raster-tif",Name="SomeLayer",Description="Some layer description")
# Uncomment the line below to recreate the expected results
# WriteRasterGeoLayerToFile(GeoLayerID="test-raster-tif",OutputFile="expected-results/test-ReadRasterGeoLayerFromFile-tif-out.tif")
# Write the Geolayer to a tif file
WriteRasterGeoLayerToFile(GeoLayerID="test-raster-tif",OutputFile="results/test-ReadRasterGeoLayerFromFile-tif-out.tif")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-ReadRasterGeoLayerFromFile-tif-out.tif",InputFile2="results/test-ReadRasterGeoLayerFromFile-tif-out.tif",IfDifferent="Warn")