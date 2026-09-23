#!/bin/bash

echo "================================"
echo "      SERVER HEALTH REPORT"
echo "================================"

echo
echo "Hostname:"
hostname

echo
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | sed 's/,/ /g' | awk '{for(i=1;i<=NF;i++) if($i ~ /id/) print 100-$(i-1)"%"}'

echo
echo "CPU Load:"
uptime

echo
echo "Memory:"
free -h

echo
echo "Disk:"
df -h /

echo
echo "Network:"
ip -brief addr

echo
echo "Top Processes:"
ps aux --sort=-%cpu | head -6

echo
echo "================================"
