StartLog(LogFile="results/test-ReadGeoLayersFromFolder-AllowedDiffCount2.gp.log")
# Test reading multiple GeoLayers from a Folder 
# 	- the folder contains a shapefile, a geojson file and a text file
#	- two differences allowed (.dbf and .cpg can each have one difference)
# Remove the result line geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayersFromFolder-AllowedDiffCount2-line-out.geojson", IfSourceFileNotFound="Ignore")
# Remove the result polygon shapefile from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayersFromFolder-AllowedDiffCount2-polygon-out.shp", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-ReadGeoLayersFromFolder-AllowedDiffCount2-polygon-out.cpg", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-ReadGeoLayersFromFolder-AllowedDiffCount2-polygon-out.dbf", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-ReadGeoLayersFromFolder-AllowedDiffCount2-polygon-out.prj", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-ReadGeoLayersFromFolder-AllowedDiffCount2-polygon-out.qpj", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="results/test-ReadGeoLayersFromFolder-AllowedDiffCount2-polygon-out.shx", IfSourceFileNotFound="Ignore")
# Read all available GeoLayers from the data folder into the GeoProcessor 
ReadGeoLayersFromFolder(SpatialDataFolder="data")
# Write the line Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="line", OutputFile="results/test-ReadGeoLayersFromFolder-AllowedDiffCount2-line-out")
# Write the polygon GeoLayer to a shapefile 
WriteGeoLayerToShapefile(GeoLayerID="polygon", OutputFile="results/test-ReadGeoLayersFromFolder-AllowedDiffCount2-polygon-out")
# Compare the results to the expected results
CompareFiles(InputFile1="data/line.geojson", InputFile2="results/test-ReadGeoLayersFromFolder-AllowedDiffCount2-line-out",AllowedDiffCount="0",IfDifferent="Warn")
CompareFiles(InputFile1="data/polygon.shp", InputFile2="results/test-ReadGeoLayersFromFolder-AllowedDiffCount2-polygon-out.shp",AllowedDiffCount="0",IfDifferent="Warn")
CompareFiles(InputFile1="data/polygon.cpg", InputFile2="results/test-ReadGeoLayersFromFolder-AllowedDiffCount2-polygon-out.cpg",AllowedDiffCount="1",IfDifferent="Warn")
CompareFiles(InputFile1="data/polygon.dbf", InputFile2="results/test-ReadGeoLayersFromFolder-AllowedDiffCount2-polygon-out.dbf",AllowedDiffCount="1",IfDifferent="Warn")
CompareFiles(InputFile1="data/polygon.prj", InputFile2="results/test-ReadGeoLayersFromFolder-AllowedDiffCount2-polygon-out.prj",AllowedDiffCount="0",IfDifferent="Warn")
CompareFiles(InputFile1="data/polygon.qpj", InputFile2="results/test-ReadGeoLayersFromFolder-AllowedDiffCount2-polygon-out.qpj",AllowedDiffCount="0",IfDifferent="Warn")
CompareFiles(InputFile1="data/polygon.shx", InputFile2="results/test-ReadGeoLayersFromFolder-AllowedDiffCount2-polygon-out.shx",AllowedDiffCount="0",IfDifferent="Warn")