#!/bin/bash
########################################
########################################
##Author: Dilhari H
##Date:16-10-26
##Version:v1


echo "=========================================="
echo "           EC2 SYSTEM MONITOR"
echo "=========================================="
echo "Date and Time : $(date)"
echo "Hostname      : $(hostname)"
echo "=========================================="

echo
echo "--------------- CPU USAGE ---------------"
top -bn1 | head -n 5

echo
echo "-------------- MEMORY USAGE --------------"
free -h

echo
echo "--------------- DISK USAGE ---------------"
df -h

echo
echo "------------- RUNNING SERVICES -----------"
systemctl list-units --type=service --state=running --no-pager

echo
echo "=========================================="
echo "        MONITORING REPORT COMPLETE"
echo "=========================================="
