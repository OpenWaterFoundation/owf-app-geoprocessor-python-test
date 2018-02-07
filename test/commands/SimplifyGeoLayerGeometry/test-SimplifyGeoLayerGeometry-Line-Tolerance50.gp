StartLog(LogFile="results/test-SimplifyGeoLayerGeometry-Line-Tolerance50.gp.log")
# Test simplifying the geometry of a GeoLayer 
# - input data is a GeoJSON Line layer
# - input data is projected in NAD83 Zone 13N
# - tolerance is set to 50 meters
# Remove the result line geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-SimplifyGeoLayerGeometry-Line-Tolerance50-out.geojson", IfSourceFileNotFound="Ignore")
# Read the line GeoJSON (with GeoLayerID of "ISF_WDistrict77") into the GeoProcessor 
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/line_isf_decreed_co_dis77_nad83_utm_z13n.geojson", GeoLayerID="ISF_WDistrict77")
# Copy the GeoLayer. 
CopyGeoLayer(GeoLayerID = "ISF_WDistrict77")
# Simplify the GeoLayer to a tolerance level of 50 meters. 
SimplifyGeoLayerGeometry(GeoLayerID = "ISF_WDistrict77_copy", Tolerance="50")
# Uncomment the line below to recreate the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="ISF_WDistrict77_copy", OutputFile="expected-results/test-SimplifyGeoLayerGeometry-Line-Tolerance50-out")
# Write the copied Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="ISF_WDistrict77_copy", OutputFile="results/test-SimplifyGeoLayerGeometry-Line-Tolerance50-out")
# Compare the results to the expected results.
CompareFiles(InputFile1="expected-results/test-SimplifyGeoLayerGeometry-Line-Tolerance50-out.geojson", InputFile2="results/test-SimplifyGeoLayerGeometry-Line-Tolerance50-out.geojson",IfDifferent="Warn")