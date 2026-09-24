# Linux Server Monitoring System

A Bash-based Linux server monitoring tool that collects system health information, detects resource usage issues, generates timestamped reports, and supports continuous monitoring.

## Features

- CPU usage monitoring
- CPU load monitoring
- RAM and swap usage monitoring
- Disk usage monitoring
- System uptime
- Network interface information
- Top CPU-consuming processes
- CPU, RAM, and disk threshold alerts
- Timestamped monitoring reports
- Continuous monitoring mode
- Terminal-based health reporting

## Technologies Used

- Linux
- Bash / Shell Scripting
- Git
- GitHub

## Requirements

- Linux
- Bash
- Standard Linux utilities:
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

Enter the project directory:

    cd linux-server-monitor

Make the script executable:

    chmod +x scripts/monitor.sh

## Usage

### Normal Monitoring

Run:

    ./scripts/monitor.sh

The script displays a server health report containing CPU, memory, disk, network, uptime, processes, and health status.

### Continuous Monitoring

Run:

    ./scripts/monitor.sh --watch

The monitoring screen refreshes automatically every 10 seconds.

Press:

    Ctrl + C

to stop continuous monitoring.

## Health Thresholds

The script checks resource usage and reports the health status.

Example:

    Health Status:
    CPU: NORMAL - 0.8%
    RAM: NORMAL - 7%
    Disk: NORMAL - 1%

If a resource exceeds the configured threshold, the script reports:

    WARNING

The current thresholds are:

- CPU: 80%
- RAM: 80%
- Disk: 80%

## Reports

Each monitoring run creates a timestamped report inside the `reports/` directory.

Example:

    reports/
    ├── report_2026-09-24_18-30-15.txt
    └── report_2026-09-24_18-30-25.txt

These reports allow previous monitoring results to be retained for later review.

## Project Structure

    linux-server-monitor/
    ├── README.md
    ├── scripts/
    │   └── monitor.sh
    ├── reports/
    │   └── .gitkeep
    └── docs/

## How It Works

The Bash script collects information from the Linux system using standard command-line utilities.

The collected information is processed and displayed as a server health report. Resource thresholds are then checked to identify potential issues.

The monitoring script can either run once or continuously using the `--watch` option.

The monitoring data represents the Linux system on which the script is executed.

## Future Improvements

- Python-based monitoring
- Service monitoring
- Nginx monitoring
- Email or notification alerts
- Log rotation
- Web-based monitoring dashboard
- Cloud/AWS deployment

## Author

Harshit Saini

GitHub: https://github.com/hxrshits

## License

This project is intended for learning, portfolio, and educational purposes.
