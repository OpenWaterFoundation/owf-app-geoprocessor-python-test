# WebGet Tests

|Test|Description|
|----|-----|
|`test-WebGet-DownloadableFile`|Tests that the WebGet command downloads a file from a URL. Downloads a GeoJSON file from the `owf-app-geoprocessor-python-test\test\commands\WebGet\data` location.|
|`test-WebGet-DownloadableZipFile`|Tests that the WebGet command downloads a zipped file from a URL. Downloads a zip file (with an archived Shapefile) from the `owf-app-geoprocessor-python-test\test\commands\WebGet\data` location.|
|`test-WebGet-DownloadableZipFile-UnzipAndRemove`|Tests that the WebGet command downloads a zipped file from a URL and that the `IfZipFile` parameter is functioning correctly. Downloads and unzips a zip file (with an archived GeoJSON file) from the `owf-app-geoprocessor-python-test\test\commands\WebGet\data` location.|