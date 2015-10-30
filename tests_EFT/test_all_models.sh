#!/bin/bash

# get the path of the script:
SCRIPT_PATH="`dirname \"$0\"`"              # relative
SCRIPT_PATH="`( cd \"$SCRIPT_PATH\" && pwd )`"  # absolutized and normalized
if [ -z "$SCRIPT_PATH" ] ; then
# error; for some reason, the path is not accessible
# to the script (e.g. permissions re-evaled after suid)
exit 1  # fail
fi

COSMOMC_FOLDER=$SCRIPT_PATH/..
PARAMETER_FOLDER=$SCRIPT_PATH/parameters

# run all the test:
for folder in $PARAMETER_FOLDER/*

do

if [ -d "$folder" ]
then

/bin/bash $folder/do_all.sh

fi

done
