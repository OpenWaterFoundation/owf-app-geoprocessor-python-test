StartLog(LogFile="results/test-ReadGeoLayerFromShapefile-Point.gp.log")
# Test reading a GeoLayer from a Shapefile 
# - Shapefile is a point layer
# - allows for zero differences in all files except for .cpg file
# Remove the result point shapefile files from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayerFromShapefile-Point-out.shp", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-ReadGeoLayerFromShapefile-Point-out.shx", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-ReadGeoLayerFromShapefile-Point-out.qpj", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-ReadGeoLayerFromShapefile-Point-out.prj", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-ReadGeoLayerFromShapefile-Point-out.dbf", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-ReadGeoLayerFromShapefile-Point-out.cpg", IfSourceFileNotFound="Ignore")
# Read the point Shapefile (with GeoLayerID of "point") into the GeoProcessor 
ReadGeoLayerFromShapefile(SpatialDataFile="data/point.shp", GeoLayerID="point")
# Write the point Geolayer to a Shapefile 
WriteGeoLayerToShapefile(GeoLayerID="point", OutputFile="results/test-ReadGeoLayerFromShapefile-Point-out")
# Compare the results to the expected results
CompareFiles(InputFile1="data/point.shp", InputFile2="results/test-ReadGeoLayerFromShapefile-Point-out.shp",AllowedDiffCount="0",IfDifferent="Warn")
CompareFiles(InputFile1="data/point.shx", InputFile2="results/test-ReadGeoLayerFromShapefile-Point-out.shx",AllowedDiffCount="0",IfDifferent="Warn")
CompareFiles(InputFile1="data/point.qpj", InputFile2="results/test-ReadGeoLayerFromShapefile-Point-out.qpj",AllowedDiffCount="0",IfDifferent="Warn")
CompareFiles(InputFile1="data/point.prj", InputFile2="results/test-ReadGeoLayerFromShapefile-Point-out.prj",AllowedDiffCount="0",IfDifferent="Warn")
CompareFiles(InputFile1="data/point.dbf", InputFile2="results/test-ReadGeoLayerFromShapefile-Point-out.dbf",AllowedDiffCount="0",IfDifferent="Warn")
CompareFiles(InputFile1="data/point.cpg", InputFile2="results/test-ReadGeoLayerFromShapefile-Point-out.cpg",AllowedDiffCount="1",IfDifferent="Warn", MatchCase="False")