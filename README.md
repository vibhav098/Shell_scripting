# Shell_scripting
## Commands to run the code
We used long options to run the code.
| Options | Arguments | Requirement |
| -------- | -------- | -------- |
| s | Source Directory | Required |
| d | Destination Directory | Required |
| o | Output File path for storing script statistics | Optional |

### Example Usage

To Run use `./Assignment_1.sh -s <Source_Directory> -d <Destination_Directory> -o(optional) <Output_File>`.

## Setting up CronJobs

To install cron run `sudo apt-get install cron`

To add our current script file to cronjobs run `crontab -e`

To run script file at 12 a.m Everyday

Add the line to the file `0 12 * * * <script_path> -s <Source_Directory> -d <Destination_Directory> -o <Output_File>`

