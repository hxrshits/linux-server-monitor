# Linux Server Monitoring System

A Bash-based Linux server monitoring tool that generates a simple health report containing CPU usage, memory usage, disk usage, uptime, network information, and running processes.

## Features

- CPU usage monitoring
- CPU load information
- RAM and swap usage
- Disk usage
- System uptime
- Network interface information
- Top CPU-consuming processes
- Simple terminal-based health report

## Technologies Used

- Linux
- Bash / Shell Scripting
- Git
- GitHub

## Requirements

- Linux system
- Bash
- Standard Linux utilities such as:
  - `top`
  - `awk`
  - `sed`
  - `free`
  - `df`
  - `ip`
  - `ps`
  - `uptime`

The project can also be run using WSL2 with Ubuntu on Windows.

## Installation

Clone the repository:

    git clone https://github.com/hxrshits/linux-server-monitor.git

Move into the project directory:

    cd linux-server-monitor

Make the monitoring script executable:

    chmod +x scripts/monitor.sh

## Usage

Run the monitoring script:

    ./scripts/monitor.sh

The script will generate a server health report directly in the terminal.

## Example Output

    =================================
          SERVER HEALTH REPORT
    =================================

    Hostname:
    ITACHI

    CPU Usage:
    0%

    CPU Load:
    load average: 0.00, 0.01, 0.00

    Memory:
    7.6Gi total

    Disk:
    1% used

    Network:
    eth0 UP

    Top Processes:
    ...

## How It Works

The script collects system information using standard Linux commands and presents the results in a readable health report.

The monitoring data represents the Linux system on which the script is executed. It does not monitor the developer's computer remotely.

## Project Structure

    linux-server-monitor/
    ├── README.md
    ├── scripts/
    │   └── monitor.sh
    ├── reports/
    │   └── .gitkeep
    └── docs/

## Future Improvements

- CPU, RAM and disk usage thresholds
- Warning and alert messages
- Automatic report generation
- Timestamped monitoring reports
- Python-based monitoring
- Service monitoring
- Nginx monitoring
- Cloud/AWS deployment
- Automated monitoring and logging

## Author

Harshit Saini

GitHub:
https://github.com/hxrshits

## License

This project is open for learning and educational purposes.
