#!/bin/sh
#
# Script to run for test

# The following HOME environment variable should be standard on every Linux system
# - but use dirname because user will be different for /home/xxxx and want /home
homedir=$(dirname $HOME)
echo "HOME_DIR=$homedir"
# The following TEST_ENV_VAR environment variable should have been set in the RunProgram command
echo "TEST_ENV_VAR=$TEST_ENV_VAR"
