#! /usr/bin/env bash

source $(dirname $0)/commonConstats.sh


find $REPORT_DIR -type f -exec rm {} \;
find $REPORT_DIR -type d -name "tmp*" -exec rmdir {} \;
find $LOG_DIR -type f -exec rm {} \;
find $MARKER_DIR -type f -exec rm {} \;

>/tmp/PckgInventErr.log
>/tmp/allPong.log



