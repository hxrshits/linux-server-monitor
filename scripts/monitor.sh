#!/bin/bash

echo "================================"
echo "      SERVER HEALTH REPORT"
echo "================================"

echo
echo "Hostname:"
hostname

echo
echo "Uptime:"
uptime -p

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
