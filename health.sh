#!/bin/bash

echo "===== Server Health Check ====="
echo "Date: $(date)"
echo "Hostname: $(hostname)"
echo

# CPU Usage
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
echo "CPU Usage: $CPU%"

# Memory Usage
MEM=$(free | awk '/Mem:/ {printf "%.2f", $3/$2 * 100}')
echo "Memory Usage: $MEM%"

# Disk Usage
DISK=$(df / | awk 'NR==2 {print $5}')
echo "Disk Usage: $DISK"

# Server Uptime
echo "Uptime: $(uptime -p)"

echo
echo "===== Health Check Complete ====="
