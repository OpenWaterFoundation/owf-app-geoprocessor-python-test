# Creates the `data\line_isf_decreed_co_dis77_nad83_utm_z13n.geojson` file.
#
# Download the Water District Instream Flow Reached (Decreed) for Colorado Water District 77 data. 
WebGet(FileURL="http://data.openwaterfoundation.org/co/cdss-data-spatial-bybasin/data-files/CO-CWCB-InstreamFlowReachesDecreed-District77-20180131.geojson", OutputFile="isf_decreed_district77")
# Read the Colorado DOLA county data into the GeoProcessor as a GeoLayer. 
ReadGeoLayerFromShapefile(SpatialDataFile="isf_decreed_district77.geojson", GeoLayerID = "ISF_Decreed_Dis77")
# Write line data out to GeoJSON spatial data file in NAD83 UTM Zone 13N. 
WriteGeoLayerToGeoJSON(GeoLayerID="ISF_Decreed_Dis77", OutputFile="line_isf_decreed_co_dis77_nad83_utm_z13n", OutputCRS = "EPSG:26913")
# Free the GeoLayer from the GeoProcessor.
FreeGeoLayer(GeoLayerID = "ISF_Decreed_Dis77")
# Remove the downloaded GeoJSON file. 
RemoveFile(SourceFile="isf_decreed_district77.geojson", IfSourceFileNotFound="Ignore")