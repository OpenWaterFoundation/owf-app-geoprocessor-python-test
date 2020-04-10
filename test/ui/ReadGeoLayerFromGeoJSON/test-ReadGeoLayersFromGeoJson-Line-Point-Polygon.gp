StartLog(LogFile="results/test-ReadGeoLayerFromGeoJSON-Line-Point-Polygon.gp.log")
# Test reading a GeoLayer from a GeoJSON
# - GeoJSON is a polygon layer
# Remove the result line-point-polygon geojson files from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayerFromGeoJSON-Line-MultipleLayers-out.geojson",IfSourceFileNotFound="Ignore")
# Remove the result line-point-polygon geojson files from the last run of the test, if existing
RemoveFile(SourceFile="results/test-ReadGeoLayerFromGeoJSON-Polygon-MultipleLayers-out.geojson",IfSourceFileNotFound="Ignore")
# Read the Line GeoJSON (with GeoLayer ID of "line") into the GeoProcessor
ReadGeoLayerFromGeoJSON(InputFile="data/line.geojson",GeoLayerID="line")
# Write the Line GeoLayer to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="line", OutputFile="results/test-ReadGeoLayerFromGeoJSON-Line-MultipleLayers-out.geojson")
# Read the point GeoJSON (with GeoLayerID of "point") into the GeoProcessor
ReadGeoLayerFromGeoJSON(InputFile="data/point.geojson",GeoLayerID="point")
# Write the point GeoLayer to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="point", OutputFile="results/test-ReadGeoLayerFromGeoJSON-Point-MultipleLayers-out.geojson")
# Read the polygon GeoJSON (with GeoLayerID of "polygon") into the GeoProcessor
ReadGeoLayerFromGeoJSON(InputFile="data/polygon.geojson",GeoLayerID="polygon")
# Write the polygon GeoLayer to a GeoJSON file
WriteGeoLayerToGeoJSON(GeoLayerID="polygon",OutputFile="results/test-ReadGeoLayerFromGeoJSON-Polygon-MultipleLayers-out.geojson")
