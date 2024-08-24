# File Backup Script

## Overview
This shell script is designed to back up files that contains a vowel from a source directory to a destination directory . It ensures that only updated or new files are copied, tracks the number of changed files, and logs the execution time to a specified output file.

## Features
- **Selective Backup**: Only copies files that are new or have been updated since the last backup.
- **Logging**: Optionally logs the number of changed files and execution time to an output file.

## Output Log File

- **Format**: The output log file will be in `.csv` format.
- **Columns**:
  1. **PID**: The process ID of the script.
  2. **RunTime in ms**: The time taken for the script to execute in milliseconds.
  3. **Number of files copied**: The number of files copied during the current run.

## Requirements
- **Bash**: This script should be run in a Unix-like environment with Bash available.
- **Cron**: For automated execution, ensure that cron is installed and running.

## Usage

### Command-Line Options

| Option | Argument | Description | Requirement |
| ------ | -------- | ----------- | ----------- |
| `-s`   | Source Directory | Path to the directory containing the files to be backed up | Required |
| `-d`   | Destination Directory | Path to the backup directory | Required |
| `-o`   | Output File | Path to the file where script statistics (number of changed files, execution time) will be logged | Optional |

### Example Command

To run the script, use the following command:

```bash
./Assignment_1.sh -s <Source_Directory> -d <Destination_Directory> -o <Output_File>
```
## Setting Up Automated Backups with Cron

### Installing Cron
If cron is not already installed on your system, install it with:
```bash
sudo apt-get install cron
```
### Viewing Existing Cron Jobs
To view your current cron jobs, run:
```bash
crontab -l
```
### Adding a Cron Job
To schedule the script to run daily at 12:00 AM, follow these steps:

1. Open the crontab file for editing:
```bash
crontab -e
```
2. Add the following line to schedule the script:
```bash
0 0 * * * /path/to/Assignment_1.sh -s <Source_Directory> -d <Destination_Directory> -o <Output_File>
```
Here, the paths to `Assignment_1.sh`, `Source_Directory`, and `Destination_Directory` should be absolute.
### Cron Job Format
The cron job schedule follows this format:
`<minute> <hour> <day_of_month> <month> <day_of_week> <command>`

For example, 0 0 * * * means the script will run at 12:00 AM every day.

