StartLog(LogFile="results/test-WriteGeoLayerToGeoJSON-Line-OutputCRS.gp.log")
# Test the functionality of the OutputCRS parameter
# - testing that the CRS is changed when writing a GeoLayer to a GeoJSON
# - testing with a line layer (in WGS84|EPSG:4326)
# Remove the result line geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-WriteGeoLayerToGeoJSON-Line-OutputCRS-out.geojson",IfSourceFileNotFound="Ignore")
# Read the line GeoJSON (with GeoLayerID of "line") into the GeoProcessor
ReadGeoLayerFromGeoJSON(InputFile="data/line.geojson",GeoLayerID="line")
# Uncomment below line to recreate expected results
# WriteGeoLayerToGeoJSON(GeoLayerID="line",OutputFile="expected-results/test-WriteGeoLayerToGeoJSON-Line-OutputCRS-out.geojson")
# Write the line Geolayer to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="line",OutputFile="results/test-WriteGeoLayerToGeoJSON-Line-OutputCRS-out.geojson")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-WriteGeoLayerToGeoJSON-Line-OutputCRS-out.geojson",InputFile2="results/test-WriteGeoLayerToGeoJSON-Line-OutputCRS-out.geojson",AllowedDiffCount="0",IfDifferent="Warn")