#!/bin/bash

REPORT_DIR="reports"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
REPORT_FILE="$REPORT_DIR/report_$TIMESTAMP.txt"

mkdir -p "$REPORT_DIR"

exec > >(tee "$REPORT_FILE") 2>&1

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

echo
echo "Health Status:"

CPU=$(top -bn1 | grep "Cpu(s)" | sed 's/,/ /g' | awk '{for(i=1;i<=NF;i++) if($i ~ /id/) print 100-$(i-1)}')
RAM=$(free | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')
DISK=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

if (( ${CPU%.*} > 80 )); then
    echo "CPU: WARNING - ${CPU}%"
else
    echo "CPU: NORMAL - ${CPU}%"
fi

if [ "$RAM" -gt 80 ]; then
    echo "RAM: WARNING - ${RAM}%"
else
    echo "RAM: NORMAL - ${RAM}%"
fi

if [ "$DISK" -gt 80 ]; then
    echo "Disk: WARNING - ${DISK}%"
else
    echo "Disk: NORMAL - ${DISK}%"
fi
