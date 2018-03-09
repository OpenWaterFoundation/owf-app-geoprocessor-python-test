# Creates the `data\polygon-co-counties.geojson` file.
#
# Download the Colorado county GIS data from DOLA.
WebGet(URL="https://storage.googleapis.com/co-publicdata/lm_cnty.zip", OutputFile="CO-counties")
# Extract and then remove the CO-counties zip file. 
UnzipFile(File="CO-counties.zip", DeleteFile="True")
# Read a GeoLayer from the Colorado country GIS shapefile. 
ReadGeoLayerFromShapefile(SpatialDataFile = "lm_cnty.shp", GeoLayerID = "CO-counties")
# Copy the CO-counties GeoLayer (only keep the Douglas county feature).
CopyGeoLayer(GeoLayerID = "CO-counties", IncludeFeaturesIf="cname = 'Douglas' or cname = 'Park' or cname = 'Jefferson' or cname = 'Chaffee'", CopiedGeoLayerID = "tri-county")
FreeGeoLayer(GeoLayerID = "CO-counties")
# Write the polygon data to GeoJSON format. 
WriteGeoLayerToGeoJSON(GeoLayerID="tri-county", OutputFile="polygon-co-counties", OutputCRS = "EPSG:4326")
# Free the GeoLayer from the GeoProcessor.
FreeGeoLayer(GeoLayerID = "tri-county")
# Remove the files from the downloaded DOLA CO county shapefile. 
RemoveFile(SourceFile="lm_cnty.cpg", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="lm_cnty.prj", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="lm_cnty.qpj", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="lm_cnty.shx", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="lm_cnty.xml", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="metadata.txt", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="lm_cnty.sbx", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="lm_cnty.sbn", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="lm_cnty.shp.xml", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="lm_cnty.shp", IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="lm_cnty.dbf", IfSourceFileNotFound="Ignore")