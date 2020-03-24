# Creates the `data\polygon_summit_co_nad83_utm_z13n.geojson` file.
#
# Download the Colorado DOLA county data. 
WebGet(FileURL="https://storage.googleapis.com/co-publicdata/lm_cnty.zip",OutputFile="co_dola_county_data",IfZipFile="UnzipAndRemove")
# Read the Colorado DOLA county data into the GeoProcessor as a GeoLayer. 
ReadGeoLayerFromShapefile(InputFile="co_dola_county_data.shp",GeoLayerID="CO_DOLA_counties")
# Remove all features except for Summit county. 
CopyGeoLayer(GeoLayerID="CO_DOLA_counties",IncludeFeaturesIf="cname='Summit'")
# Write Summit polygon data out to GeoJSON spatial data file in NAD83 UTM Zone 13N. 
WriteGeoLayerToGeoJSON(GeoLayerID="CO_DOLA_counties_copy",OutputFile="polygon_summit_co_nad83_utm_z13n",OutputCRS="EPSG:26913",OutputPrecision="5")
# Free the GeoLayer from the GeoProcessor.
FreeGeoLayer(GeoLayerID="CO_DOLA_counties")
# Remove the downloaded Shapefile files. 
RemoveFile(SourceFile="co_dola_county_data.dbf",IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="co_dola_county_data.prj",IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="co_dola_county_data.sbn",IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="co_dola_county_data.sbx",IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="co_dola_county_data.shp",IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="co_dola_county_data.shx",IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="co_dola_county_data.txt",IfSourceFileNotFound="Ignore")
RemoveFile(SourceFile="co_dola_county_data.xml",IfSourceFileNotFound="Ignore")
