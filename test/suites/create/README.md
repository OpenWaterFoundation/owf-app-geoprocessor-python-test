# test/suites/create #

This folder contains files used to create the test suite command file,
which is then run to test the full software functionality.

* Command file:
	+ `create-regression-test-command-file.gp` - command file that is run to create the test suite
		- `create-regression-test-command-file.gp.log` - log file for the above, ignored in repository
* Script to run the above command file:
	+ `create-test-command-file.bat` - Windows batch file to run the above command file using the GeoProcessor
		- `create-test-command-file.bat.log` - standard output and error from
		`create-test-command-file.bat` batch file, redirected to file, ignored in the repository
	+ `create-test-command-file-dev.bat` - Windows batch file to run the above command file using the GeoProcessor (in the development environment)
	+ `create-test-command-file.sh` - Linux shell script to run the above command file using the GeoProcessor
		- `create-test-command-file.sh.log` - standard output and error from
		`create-test-command-file.sh` script, redirected to file, ignored in the repository

The auto-generated command file output from running the above is written as
`../run/geoprocessor-tests.gp` and can be run to run the full suite of tests. 
