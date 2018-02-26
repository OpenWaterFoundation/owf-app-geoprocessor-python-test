# test/suites/run #

This folder contains files used to run test suites.
The test suites are created by running scripts in the `test/suites/create` folder.

## Run Full Test Suite ##

* Command file (created by running scripts in the `../create` folder):
	+ `geoprocessor-tests.gp`
		- `geoprocessor-tests.gp.log` - log file created when the above is run
		- `geoprocessor-tests.gp.out.txt` - text summary of test results
		- `geoprocessor-tests.gp.summary.html` - HTML summary of command logs
* Script to run the above command file:
	* `run-geoprocessor-tests.bat` - Windows batch file to run the test suite
		- `run-geoprocessor-tests.bat.log` - log file capturing window output from batch file
	* `run-geoprocessor-tests.sh`- Linux script to run the test suite
		- `run-geoprocessor-tests.sh.log` - log file capturing window output from shell script

## Run Individual Tests ##

The following approach can be take to run individual tests.
This is useful given that the UI is not in place to interactively run single tests.
This approach will likely be removed when the UI is implemented.
Comment/uncomment tests as appropriate.

* `run-tests-steve.bat` - Windows batch file containing a number of tests to run
* `run-tests-steve.sh` - Linux batch file containing a number of tests to run
