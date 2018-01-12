StartLog(LogFile="results/test-ReadGeoLayerFromShapefile-Polygon.gp.log")
# Test reading a GeoLayer from a Shapefile 
# - Shapefile is a polygon layer
# - allows for zero differences in all files except for .cpg file
# Remove the result polygon shapefile files from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayerFromShapefile-Polygon-out.shp", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-ReadGeoLayerFromShapefile-Polygon-out.shx", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-ReadGeoLayerFromShapefile-Polygon-out.qpj", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-ReadGeoLayerFromShapefile-Polygon-out.prj", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-ReadGeoLayerFromShapefile-Polygon-out.dbf", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-ReadGeoLayerFromShapefile-Polygon-out.cpg", IfSourceFileNotFound="Ignore")
# Read the polygon Shapefile (with GeoLayerID of "polygon") into the GeoProcessor 
ReadGeoLayerFromShapefile(SpatialDataFile="data/polygon.shp", GeoLayerID="polygon")
# Write the polygon Geolayer to a Shapefile 
WriteGeoLayerToShapefile(GeoLayerID="polygon", OutputFile="results/test-ReadGeoLayerFromShapefile-Polygon-out")
# Compare the results to the expected results
CompareFiles(InputFile1="data/polygon.shp", InputFile2="results/test-ReadGeoLayerFromShapefile-Polygon-out.shp",AllowedDiffCount="0",IfDifferent="Warn")
CompareFiles(InputFile1="data/polygon.shx", InputFile2="results/test-ReadGeoLayerFromShapefile-Polygon-out.shx",AllowedDiffCount="0",IfDifferent="Warn")
CompareFiles(InputFile1="data/polygon.qpj", InputFile2="results/test-ReadGeoLayerFromShapefile-Polygon-out.qpj",AllowedDiffCount="0",IfDifferent="Warn")
CompareFiles(InputFile1="data/polygon.prj", InputFile2="results/test-ReadGeoLayerFromShapefile-Polygon-out.prj",AllowedDiffCount="0",IfDifferent="Warn")
CompareFiles(InputFile1="data/polygon.dbf", InputFile2="results/test-ReadGeoLayerFromShapefile-Polygon-out.dbf",AllowedDiffCount="0",IfDifferent="Warn")
CompareFiles(InputFile1="data/polygon.cpg", InputFile2="results/test-ReadGeoLayerFromShapefile-Polygon-out.cpg",AllowedDiffCount="1",IfDifferent="Warn", MatchCase="False")