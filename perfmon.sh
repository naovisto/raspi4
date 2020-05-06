#!/bin/bash

EVENTBREAK="#####"

/opt/vc/bin/vcgencmd measure_temp | grep -o -P '\d.{0,6}' | sed "s/'/°/g"

cat /proc/meminfo | grep -E 'MemTotal|MemFree|MemAvailable' | awk '{$2=$2};1'

# Needs netstat installed (sudo apt-get install net-tools)
netstat -i | grep eth0 | awk '{$2=$2};1'

echo $EVENTBREAK