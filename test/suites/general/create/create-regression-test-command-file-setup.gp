# Command file to set up the environment and database connections for the general test suite.
# This command file should be read in at the start of the test suite
# and then the remaining tests can share these connections
#
# Get the current time to use in output files:
# - TODO smalers 2023-03-10 need to implement the commands and DateTime support
#SetProperty(PropertyName="Now",PropertyType=DateTime,PropertyValue="CurrentToMinute")
#FormatDateTimeProperty(PropertyName="NowString",DateTimePropertyName="Now",Format="%Y%m%d%H%M")
SetProperty(PropertyName="NowString",PropertyType="str",PropertyValue="2023-03-12")
