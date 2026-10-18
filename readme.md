
# EC2 System Monitoring Using Bash

## Objective
Monitor CPU usage, memory usage, disk usage, and running
services on an Ubuntu EC2 instance using a Bash script.

## Requirements
- AWS EC2 Ubuntu instance
- Bash shell
- Git
- Cron

## Files
- monitor.sh: Collects system monitoring information.
- monitor_logs.txt: Stores monitoring output.
- README.md: Project documentation.

## How to Run

Make the script executable:

    chmod +x monitor.sh

Run the monitoring script:

    ./monitor.sh

## Logging

Append monitoring output to the log:

    ./monitor.sh >> monitor_logs.txt 2>&1

## Automated Execution

Open the crontab:

    crontab -e

Example schedule for daily execution at 9 AM:

    0 9 * * * /home/ubuntu/shell-assignment/monitor.sh >> /home/ubuntu/shell-assignment/monitor_logs.txt 2>&1


## Monitoring Details
- CPU: Processor activity using top
- Memory: RAM and swap statistics using free
- Disk: Filesystem usage using df
- Services: Running systemd services using systemctl

## Project Outcome
The script provides a formatted system monitoring report
and supports logging and scheduled execution.

