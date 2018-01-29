StartLog(LogFile="results/test-WriteGeoLayerToShapefile-Line-OutputCRS-AllowedDiffCount1.gp.log")
# Test the functionality of the OutputCRS parameter
# - testing that the CRS is changed when writing a GeoLayer to a shapefile
# - testing with a line layer (in WGS84|EPSG:4326)
# - line is written out in new CRS of USA Contiguous Albers Equal Area Conic (ESRI:102003)
# Remove the result line.shp file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-WriteGeoLayerToShapefile-Line-OutputCRS-AllowedDiffCount1-out.shp", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-WriteGeoLayerToShapefile-Line-OutputCRS-AllowedDiffCount1-out.cpg", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-WriteGeoLayerToShapefile-Line-OutputCRS-AllowedDiffCount1-out.dbf", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-WriteGeoLayerToShapefile-Line-OutputCRS-AllowedDiffCount1-out.prj", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-WriteGeoLayerToShapefile-Line-OutputCRS-AllowedDiffCount1-out.qpj", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-WriteGeoLayerToShapefile-Line-OutputCRS-AllowedDiffCount1-out.shx", IfSourceFileNotFound="Ignore")
# Read the line Shapefile (with GeoLayerID of "line") into the GeoProcessor 
ReadGeoLayerFromShapefile(SpatialDataFile="data/line.shp", GeoLayerID="line")
# Uncomment below line to recreate expected results
#WriteGeoLayerToShapefile(GeoLayerID="line", OutputFile="expected-results/test-WriteGeoLayerToShapefile-Line-OutputCRS-AllowedDiffCount1-out", OutputCRS="ESRI:102003")
# Write the line Geolayer to a Shapefile file 
WriteGeoLayerToShapefile(GeoLayerID="line", OutputFile="results/test-WriteGeoLayerToShapefile-Line-OutputCRS-AllowedDiffCount1-out", OutputCRS="ESRI:102003")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-WriteGeoLayerToShapefile-Line-OutputCRS-AllowedDiffCount1-out.shp", InputFile2="results/test-WriteGeoLayerToShapefile-Line-OutputCRS-AllowedDiffCount1-out.shp",IfDifferent="Warn")
CompareFiles(InputFile1="expected-results/test-WriteGeoLayerToShapefile-Line-OutputCRS-AllowedDiffCount1-out.cpg", InputFile2="results/test-WriteGeoLayerToShapefile-Line-OutputCRS-AllowedDiffCount1-out.cpg",IfDifferent="Warn")
CompareFiles(InputFile1="expected-results/test-WriteGeoLayerToShapefile-Line-OutputCRS-AllowedDiffCount1-out.shx", InputFile2="results/test-WriteGeoLayerToShapefile-Line-OutputCRS-AllowedDiffCount1-out.shx",IfDifferent="Warn")
CompareFiles(InputFile1="expected-results/test-WriteGeoLayerToShapefile-Line-OutputCRS-AllowedDiffCount1-out.dbf", InputFile2="results/test-WriteGeoLayerToShapefile-Line-OutputCRS-AllowedDiffCount1-out.dbf",AllowedDiffCount="1",IfDifferent="Warn")
CompareFiles(InputFile1="expected-results/test-WriteGeoLayerToShapefile-Line-OutputCRS-AllowedDiffCount1-out.qpj", InputFile2="results/test-WriteGeoLayerToShapefile-Line-OutputCRS-AllowedDiffCount1-out.qpj",IfDifferent="Warn")
CompareFiles(InputFile1="expected-results/test-WriteGeoLayerToShapefile-Line-OutputCRS-AllowedDiffCount1-out.prj", InputFile2="results/test-WriteGeoLayerToShapefile-Line-OutputCRS-AllowedDiffCount1-out.prj",IfDifferent="Warn")