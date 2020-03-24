StartLog(LogFile="results/test-SimplifyGeoLayerGeometry-Polygon-Tolerance1000.gp.log")
# Test simplifying the geometry of a GeoLayer 
# - input data is a GeoJSON Polygon layer
# - input data is projected in NAD83 Zone 13N
# - tolerance is set to 1000
# Remove the result polygon geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-SimplifyGeoLayerGeometry-Polygon-Tolerance1000-out.geojson",IfSourceFileNotFound="Ignore")
# Read the polygon GeoJSON (with GeoLayerID of "SummitCounty") into the GeoProcessor 
ReadGeoLayerFromGeoJSON(InputFile="data/polygon_summit_co_nad83_utm_z13n.geojson",GeoLayerID="SummitCounty")
# Simplify the GeoLayer to a tolerance level of 1000 meters. 
SimplifyGeoLayerGeometry(GeoLayerID="SummitCounty",Tolerance="1000")
# Uncomment the line below to recreate the expected results
#WriteGeoLayerToGeoJSON(GeoLayerID="SummitCounty_simple_1000",OutputFile="expected-results/test-SimplifyGeoLayerGeometry-Polygon-Tolerance1000-out")
# Write the copied Geolayer to a GeoJSON file 
WriteGeoLayerToGeoJSON(GeoLayerID="SummitCounty_simple_1000",OutputFile="results/test-SimplifyGeoLayerGeometry-Polygon-Tolerance1000-out")
# Compare the results to the expected results.
CompareFiles(InputFile1="expected-results/test-SimplifyGeoLayerGeometry-Polygon-Tolerance1000-out.geojson",InputFile2="results/test-SimplifyGeoLayerGeometry-Polygon-Tolerance1000-out.geojson",IfDifferent="Warn")
