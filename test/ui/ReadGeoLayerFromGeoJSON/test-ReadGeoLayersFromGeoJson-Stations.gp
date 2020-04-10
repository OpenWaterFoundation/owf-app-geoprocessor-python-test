StartLog(LogFile="results/test-ReadGeoLayerFromGeoJSON-Stations.gp.log")
# Test reading a GeoLayer from a GeoJSON
# - GeoJSON is a polygon layer
# Remove the result line-point-polygon geojson files from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayerFromGeoJSON-Stations-out.geojson",IfSourceFileNotFound="Ignore")
# Read the Line GeoJSON (with GeoLayer ID of "stations") into the GeoProcessor
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/stations.geojson",GeoLayerID="stations")
# Write the Line GeoLayer to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="stations",OutputFile="results/test-ReadGeoLayerFromGeoJSON-Stations-out")
