# Test creating a GeoMapProject
# - running commands ensures that no runtime errors occur
#@docExample
# Create a project and add a map.
# - layer groups and layers are added below
StartLog(LogFile="results/test-CreateGeoMapProject.gp.log")
CreateGeoMapProject(NewGeoMapProjectID="TestGeoMapProject",Name="TestGeoMapProject",Description="Test geomap project.",Properties="effectiveDateTime:'2020-01-01T00:00',author:me,saveDateTime:TBD,fileFormatVersion:TBD")
CreateGeoMap(NewGeoMapID="TestGeoMap",Name="TestGeoMap",Description="Test map",CRS="EPSG:4326",Properties="TestProperty:'property value',testint:5,initialExtent:TBD,minimumExtent:TBD,maximumExtent:TBD",IfGeoMapIDExists="Warn")
AddGeoMapToGeoMapProject(GeoMapProjectID="TestGeoMapProject",GeoMapID="TestGeoMap")
#
# Add a layer view group for polygons.
AddGeoLayerViewGroupToGeoMap(GeoMapID="TestGeoMap",GeoLayerViewGroupID="TestGeoLayerViewGroupPolygons",Name="Test GeoLayerViewGroupPolygons",Description="Test layer view group for polygons")
CreateGeoLayerFromGeometry(NewGeoLayerID="TestPolygonLayer",Name="Test PolygonLayer",Description="Test polygon layer",GeometryFormat="WKT",GeometryData="MULTIPOLYGON (((30 20, 45 40, 10 40, 30 20)),((15 5, 40 10, 10 20, 5 10, 15 5)))",CRS="EPSG:4326",Properties="testProperty1:'value1',testProperty2:'another property'")
AddGeoLayerViewToGeoMap(GeoLayerID="TestPolygonLayer",GeoMapID="TestGeoMap",GeoLayerViewGroupID="TestGeoLayerViewGroupPolygons",GeoLayerViewID="TestPolygonLayer1",Name="Test polygon layer",Properties="testProp1:hello,testProp2:'hello world'")
SetGeoLayerViewSingleSymbol(GeoMapID="TestGeoMap",GeoLayerViewGroupID="TestGeoLayerViewGroupPolygons",Name="TestSingleSymbol",Description="Test single symbol",GeoLayerViewID="TestPolygonLayer1",Properties="color:'255,165,0',outlineColor:black,size:9,sizeUnits:pixels,opacity:1.0,lineWide:1,fillOpacity:.8")
SetGeoLayerViewEventHandler(GeoMapID="TestGeoMap",GeoLayerViewGroupID="TestGeoLayerViewGroupPolygons",GeoLayerViewID="TestPolygonLayer1",EventType="MouseOver",Name="TestMouseOver",Description="Test mouse over - should result in transient popup",Properties="template:someTemplate")
#
# Add a layer view group for lines.
AddGeoLayerViewGroupToGeoMap(GeoMapID="TestGeoMap",GeoLayerViewGroupID="TestGeoLayerViewGroupLines",Name="Test GeoLayerViewGroupLines",Description="Test layer view group for lines")
CreateGeoLayerFromGeometry(NewGeoLayerID="TestLineLayer",Name="TestLineLayer",Description="Test line layer",GeometryFormat="WKT",GeometryData="LINESTRING (30 10, 10 30, 40 40)",CRS="EPSG:4326")
AddGeoLayerViewToGeoMap(GeoLayerID="TestLineLayer",GeoMapID="TestGeoMap",GeoLayerViewGroupID="TestGeoLayerViewGroupLines",GeoLayerViewID="TestLineLayer1",Name="Test line layer")
SetGeoLayerViewGraduatedSymbol(GeoMapID="TestGeoMap",GeoLayerViewGroupID="TestGeoLayerViewGroupLines",GeoLayerViewID="TestLineLayer1",Name="TestGraduatedSymbol",Description="Test graduated symbol",ClassificationAttribute="someattribute")
#
# Add a layer view group for points.
AddGeoLayerViewGroupToGeoMap(GeoMapID="TestGeoMap",GeoLayerViewGroupID="TestGeoLayerViewGroupPoints",Name="Test GeoLayerViewGroupPoints",Description="Test layer view group for points")
CreateGeoLayerFromGeometry(NewGeoLayerID="TestPointLayer",Name="TestPointLayer",Description="Test point layer",GeometryFormat="WKT",GeometryData="POINT (30 10)",CRS="EPSG:4326")
AddGeoLayerViewToGeoMap(GeoLayerID="TestPointLayer",GeoMapID="TestGeoMap",GeoLayerViewGroupID="TestGeoLayerViewGroupPoints",GeoLayerViewID="TestPointLayer1",Name="Test point layer 1")
SetGeoLayerViewCategorizedSymbol(GeoMapID="TestGeoMap",GeoLayerViewGroupID="TestGeoLayerViewGroupLines",GeoLayerViewID="TestLineLayer1",Name="TestCategorizedSymbol",Description="Test categorized symbol",ClassificationAttribute="someattribute")
#
# Add a layer view group for base layers
AddGeoLayerViewGroupToGeoMap(GeoMapID="TestGeoMap",GeoLayerViewGroupID="TestBaseLayerGroup",Name="Base layer group",Description="Test layer view group for base layers")
# ReadRasterGeoLayerFromWebMapService(InputUrl="http://SomeMapService",GeoLayerID="SomeMapService",Name="SomeMapService")
ReadRasterGeoLayerFromTileMapService(InputUrl="https://SomeTMSUrl",GeoLayerID="SomeTMSUrl")
AddGeoLayerViewToGeoMap(GeoLayerID="SomeTMSUrl",GeoMapID="TestGeoMap",GeoLayerViewGroupID="TestBaseLayerGroup",GeoLayerViewID="BaseMapLayerView",Name="Test base layer 1")
#
# Create a GeoMapProject and write to a JSON file.
# - Must write the GeoLayers first - otherwise the map project won't know where to find the layers.
# - Actually, the GeoProcessor will now use the input source path if output was not created.
# - However, this requires that the layer was read from a file, not created from memory.
WriteGeoLayerToGeoJSON(GeoLayerID="TestPolygonLayer",OutputFile="results/test-CreateGeoMapProject-PolygonLayer.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="TestLineLayer",OutputFile="results/test-CreateGeoMapProject-LineLayer.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="TestPointLayer",OutputFile="results/test-CreateGeoMapProject-PointLayer.geojson")
#
WriteGeoMapProjectToJSON(GeoMapProjectID="TestGeoMapProject",Indent="2",OutputFile="results/test-CreateGeoMapProject-out.json")
