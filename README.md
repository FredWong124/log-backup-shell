# Apache Web Server Log Backup Shell Script

A Shell script for backing up apache web server logs and performing cleanup of old backup files. This script is designed to be executed on a Linux system and utilizes the `tar` command for creating backup archives.

## Prerequisites

- Linux operating system
- `tar` command installed

## Usage
1. Clone the repository:

   ```bash
   git clone https://github.com/FredWong124/log-backup-shell 
2. Modify the script variables:
`nano backup.sh`

- `srcDir`: Specify the source directory you intend to back up.
- `dstDir`: Set the destination directory where the backup files will be stored.
- `keeping_days`: Define the number of days to retain the backup files.

3. Make the script executable:
 `chmod +x backup.sh`

 4. Execute the script:
 `./backup.sh`
 This will create a new backup file in the destination directory, following the format `web_server_logsYYYYMMDD.tar.gz`. The `YYYYMMDD` represents the current date. The script will also handle the deletion of old backup files that exceed the specified number of keeping days.


## Automate the backup procedure:

You can set up a cron job to schedule the execution of the script at regular intervals for fully automated backups.

1. Edit your cronjob

`crontab -e`

2. Set up the time that you want to perform auto backup

`0 8 * * * /bin/bash /path/to/your/sh`

`/path/to/your/sh` = your script path , eg: `/home/fred/backup.sh`


0 = mins 

8 = hours 

This example shows it will run the script at 8am everyday and you can adjust the number to acheive the time you want to execute the script. 

eg: 

16:30 = 30 16 * * *

03:45 = 45 3 * * *


3. Save & quit the corntab
`Esc` > `:` >`w`>`:`>`x`

4. Check the corntab
`crontab -l`

## Customization
Feel free to fork this repository and customize the script to suit your specific requirements.

Please make sure to adjust the content according to your needs and preferences.
Please review the content to ensure it meets your expectations.
