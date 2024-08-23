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

## Setting up CronJobs to backup Every day 

To install cron run `sudo apt-get install cron`

To add our current script file to cronjobs run `crontab -e`



Before running the code make sure to create folders 'input' and 'output'.

Here 'input' folder contains files 'ICache.txt' , 'DCache.txt' , 'RF.txt'.

And 'output' folder contains files 'Output.txt' , 'DCache.txt' , 'RF.txt' after execution of code.
