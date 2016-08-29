#!/bin/bash

SCRIPT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $SCRIPT_PATH/load-environment

logfile_gzserver=/tmp/gzserver.log
logfile_gzweb=/tmp/gzweb.log

#nohup is used for a quick and dirty demonization here
if pgrep gzserver &>/dev/null ; then
   echo "gzserver already running"
else
   echo "starting gzserver... logging to $logfile_gzserver"
   nohup $PREFIX/bin/gzserver --verbose 0<&- &>$logfile_gzserver &
fi
echo "starting gzweb... logging to $logfile_gzweb"
nohup $HOME/osrf-gzweb-b027171f5aa1/start_gzweb.sh 0<&- &>$logfile_gzweb &

