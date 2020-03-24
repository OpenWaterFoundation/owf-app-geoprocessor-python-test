StartLog(LogFile="results/test-SimplifyGeoLayerGeometry-Line-Tolerance50.gp.log")
# Test simplifying the geometry of a GeoLayer 
# - input data is a GeoJSON Line layer
# - input data is projected in NAD83 Zone 13N
# - tolerance is set to 50 meters
# Remove the result line geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-SimplifyGeoLayerGeometry-Line-Tolerance50-out.geojson",IfSourceFileNotFound="Ignore")
# Read the line GeoJSON (with GeoLayerID of "ISF_WDistrict77") into the GeoProcessor 
ReadGeoLayerFromGeoJSON(InputFile="data/line_isf_decreed_co_dis77_nad83_utm_z13n.geojson",GeoLayerID="ISF_WDistrict77")
# Simplify the GeoLayer to a tolerance level of 50 meters. 
SimplifyGeoLayerGeometry(GeoLayerID="ISF_WDistrict77",Tolerance="50",OutputGeoLayerID="Simple_50")
# Uncomment the line below to recreate the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="Simple_50",OutputFile="expected-results/test-SimplifyGeoLayerGeometry-Line-Tolerance50-out")
# Write the copied Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="Simple_50",OutputFile="results/test-SimplifyGeoLayerGeometry-Line-Tolerance50-out")
# Compare the results to the expected results.
CompareFiles(InputFile1="expected-results/test-SimplifyGeoLayerGeometry-Line-Tolerance50-out.geojson",InputFile2="results/test-SimplifyGeoLayerGeometry-Line-Tolerance50-out.geojson",IfDifferent="Warn")
