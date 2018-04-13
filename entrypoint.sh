#!/bin/bash

DAEMON="/etc/danted/sbin/sockd"
PID_FILE="/var/run/sockd.pid"
CONFIG_FILE="/etc/danted/sockd.conf"

trap "start-stop-daemon --stop --quiet --oknodo --pidfile $PID_FILE --exec $DAEMON -- -f ${CONFIG_FILE} -p $PID_FILE -N 1 -n" HUP INT TERM

start-stop-daemon --start --quiet --oknodo --pidfile $PID_FILE --exec $DAEMON -- -f ${CONFIG_FILE} -p $PID_FILE -N 1 -n &

wait
