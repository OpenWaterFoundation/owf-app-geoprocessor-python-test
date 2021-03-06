# owf-app-geoprocessor-python-test #

This repository contains functional tests for the Open Water Foundation (OWF) GeoProcessor application software.
A repository that is separate from the code repository is used to allow non-programmers
to more easily contribute to tests.

GeoProcessor functional tests consist of command files and test data used in automated regression tests.
The purpose of these tests is to validate GeoProcessor command functionality for default command parameters
and combinations of command parameter values.
The tests are also helpful for understanding how to use GeoProcessor commands and can therefore be used as a reference.
The tests are accessible from the GeoProcessor user documentation.

* [Cloning the Repository](#cloning-the-repository)
* [Repository File Structure](#repository-file-structure)
* [Running the Tests](#running-the-tests)
	+ [Run a Single Test](#run-a-single-test)
	+ [Run a Test Suite in the Development Environment](#run-a-test-suite-in-the-development-environment)
* [Configuring a Test](#configuring-a-test)

------------------

## Cloning the Repository ##

The repository can be cloned into any folder.  However, utility scripts assume a standard folder structure
and additional scripts may need to be created to account for different installed environments.

If the tests are being included in a development workspace, then clone the repository into a folder parallel to other
GeoProcessor component repositories so that the tests can be conveniently run from the developer environment,
similar to the following.

```text
C:\Users\user\                                   Windows user files.
/cygdrive/C/Users/user/                          Cygdrive user files (shared with above Windows files).
/home/user/                                      Linux user files.
  owf-dev/                                       Development folder.
    GeoProcessor/                                Product folder.
      git-repos/                                 Folder for Git repositories for the product.
        owf-app-geoprocessor-python/             Software code repository.
        owf-app-geoprocessor-python-test/        Functional tests.
        owf-app-geoprocessor-python-doc-user/    User documentation.
```

## Repository File Structure ##

The important files in the repository are as follows:

```text
test/                                Top-level folder for all tests.
  commands/                          Folder for all command tests.
    CommandName/                     Folders for the tests for each command.
      data/                          Data used for command tests if needed, usually small datasets.
      expected-results/              Expected results from test when files are involved,
                                     generated, inspected, and saved for continued use.
      results/                       Results generated by the current test runs.
      test-CommandName-TestName.gp   Individual test command files to run.
  suites/                            Folder for test suites, when the above command
                                     tests are run in groups.
    create/                          Includes GeoProcessor command files to create the test suite.
    run/                             Includes auto-generated test suite to run many command tests.
    
```

It is undesirable to store dynamic test results in the repository.
Therefore, each `results` folder includes a `.gitignore` file to ignore all files in the folder,
except for the `.gitignore` file itself.
Other approaches were evaluated and may be implemented in the future;
however, using individual `.gitignore` files is fail-safe.
The empty `results` folders will be available if the repository is cloned.
This is helpful because GeoProcessor commands do not generally auto-generate output folders.

## Running the Tests ##

The functional tests are run by the GeoProcessor software from the development environment or a normal install.
Tests can be run from the GeoProcessor user interface or in batch mode.
This approach allows the GeoProcessor to test itself as well as
being used to test essentially any workflow process that can be run by the GeoProcessor,
including running external programs.
The advantage of this approach is that GeoProcessor users can create automated tests without having to install
and be proficient with the GeoProcessor software development environment.

### Run a Single Test ###

Running a single test is the approach taken when doing test-driven development.

Although unit tests in the code could be implemented,
functional tests validate the full software functionality and ensure that tests are
created that can be run in the operational environment, if needed.

The `gp` application can be used to run a test command file as follows and now uses Python3/QGIS3:

1. Use `gp --commands command-file.gp` to run in batch mode.
2. Use `gp` and then `run command-file.gp` to run via the command shell.
2. Use `gp -ui` and then select a command file in the user interface (UI) - under development.

The `gp2` application is an archive of previous Python2/QGIS2 version.

### Run a Test Suite in the Development Environment ###

To run a test suite in the development environment in a Windows command shell:

1. `cd test/suites/create`
2. `create-test-command-file-dev.bat`
3. `cd ../run`
4. `run-geoprocessor-tests.bat`
5. View the results:
	1. View `geoprocessor-tests.gp.summary.html` in a web browser.
	2. View `geoprocessor-tests.gp.out.txt` in a text editor.

## Configuring a Test ##

Each GeoProcessor test is a command file that is intended to test the functionality of a single command
or some reasonably-small combination of commands.
Command files typically include the following steps involving GeoProcessor commands:

1. Previous test cleanup.
Output files from tests are generally left in the `results` folder to allow inspection.
These files are ignored with `.gitignore` files in each command's test folder, so as to not save to the repository.
However, these files should be removed from working files so that a failed test does not
appear to have created the files.  Use the `RemoveFile` command as appropriate.
2. Setup step(s), such as opening a log file and defining synthetic data
with the `CreateGeoLayer` or similar commands.
In some cases, data files are read from files using various `Read...` commands
(input is generally stored in the `data` folder under the command test folder).
3. Execution step(s), in particular running the command to be tested,
which will modify in-memory data and/or write output to file(s).
4. Test/comparison step(s), for example using the `CompareGeoLayers`, `CompareFiles`, or other command.
These are equivalent to unit test "assert" tests commonly used in software testing.
5. Teardown/cleanup step(s), such as removing files or freeing in-memory data objects.
However, because dynamic test result output is not saved to the Git repository,
there is generally not a need to do much tear-down.
A specific example where tear-down is appropriate is when testing the `SetDebugLevel`
command it is necessary to turn debugging off after the test so that subsequent commands
don't run in debug mode, which generates a lot of output and is slow.

Refer to the command tests for examples of how the above testing approach is implemented.
