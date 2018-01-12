StartLog(LogFile="results/test-ReadGeoLayerFromShapefile-Line.gp.log")
# Test reading a GeoLayer from a Shapefile 
# - Shapefile is a line layer
# - allows for zero differences in all files except for .cpg file
# Remove the result line shapefile files from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayerFromShapefile-Line-out.shp", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-ReadGeoLayerFromShapefile-Line-out.shx", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-ReadGeoLayerFromShapefile-Line-out.qpj", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-ReadGeoLayerFromShapefile-Line-out.prj", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-ReadGeoLayerFromShapefile-Line-out.dbf", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-ReadGeoLayerFromShapefile-Line-out.cpg", IfSourceFileNotFound="Ignore")
# Read the line Shapefile (with GeoLayerID of "line") into the GeoProcessor 
ReadGeoLayerFromShapefile(SpatialDataFile="data/line.shp", GeoLayerID="line")
# Write the line Geolayer to a Shapefile 
WriteGeoLayerToShapefile(GeoLayerID="line", OutputFile="results/test-ReadGeoLayerFromShapefile-Line-out")
# Compare the results to the expected results
CompareFiles(InputFile1="data/line.shp", InputFile2="results/test-ReadGeoLayerFromShapefile-Line-out.shp",AllowedDiffCount="0",IfDifferent="Warn")
CompareFiles(InputFile1="data/line.shx", InputFile2="results/test-ReadGeoLayerFromShapefile-Line-out.shx",AllowedDiffCount="0",IfDifferent="Warn")
CompareFiles(InputFile1="data/line.qpj", InputFile2="results/test-ReadGeoLayerFromShapefile-Line-out.qpj",AllowedDiffCount="0",IfDifferent="Warn")
CompareFiles(InputFile1="data/line.prj", InputFile2="results/test-ReadGeoLayerFromShapefile-Line-out.prj",AllowedDiffCount="0",IfDifferent="Warn")
CompareFiles(InputFile1="data/line.dbf", InputFile2="results/test-ReadGeoLayerFromShapefile-Line-out.dbf",AllowedDiffCount="0",IfDifferent="Warn")
CompareFiles(InputFile1="data/line.cpg", InputFile2="results/test-ReadGeoLayerFromShapefile-Line-out.cpg",AllowedDiffCount="1",IfDifferent="Warn", MatchCase="False")