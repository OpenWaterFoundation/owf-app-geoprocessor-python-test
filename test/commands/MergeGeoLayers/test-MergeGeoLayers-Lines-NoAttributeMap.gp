StartLog(LogFile="results/test-MergeGeoLayers-Lines-NoAttributeMap.gp.log")
# Test merging GeoLayers of the same Geometry and without an Attribute Map
# 	- the two input GeoLayers are multi-feature LINE GeoJSON files.
# 	- the two input GeoLayers have one attribute in common (`id`)
#	- the two input GeoLayers each have two unique attributes
#	--> lines_station_state.geojson (`station`, `state`)
#	--> lines_StatName_StateName.geojson (`StatName`, `StateName`)
# Remove the result line geojson file from the last run of the test, if existing
RemoveFile(SourceFile="results/test-MergeGeoLayers-Lines-NoAttributeMap-out.geojson", IfSourceFileNotFound="Ignore")
# Read both GeoJSONs into the GeoProcessor 
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/lines_station_state.geojson", GeoLayerID="station_state")
ReadGeoLayerFromGeoJSON(SpatialDataFile="data/lines_StatName_StateName.geojson", GeoLayerID="StatName_StateName")
# Merge the two GeoLayers. 
MergeGeoLayers(GeoLayerIDs="station_state, StatName_StateName", OutputGeoLayerID="merged")
# Uncomment below line to recreate expected results.
#WriteGeoLayerToGeoJSON(GeoLayerID="merged", OutputFile="expected-results/test-MergeGeoLayers-Lines-NoAttributeMap-out")
# Write the merged output GeoLayer to GeoJSON
WriteGeoLayerToGeoJSON(GeoLayerID="merged", OutputFile="results/test-MergeGeoLayers-Lines-NoAttributeMap-out")
# Compare the results to the expected results
CompareFiles(InputFile1="expected-results/test-MergeGeoLayers-Lines-NoAttributeMap-out.geojson", InputFile2="results/test-MergeGeoLayers-Lines-NoAttributeMap-out.geojson", IfDifferent="Warn")