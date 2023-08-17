# Apache Web Server Log Backup Shell Script

A Shell script for backing up apache web server logs and performing cleanup of old backup files. This script is designed to be executed on a Linux system and utilizes the `tar` command for creating backup archives.

## Prerequisites

- Linux operating system
- `tar` command installed

## Usage
1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/yourrepository.git
2. Modify the script variables:
`nano backup.sh`

- `srcDir`: Specify the source directory you intend to back up.
- `dstDir`: Set the destination directory where the backup files will be stored.
- `keeping_days`: Define the number of days to retain the backup files.

3. Make the script executable:
 `chmod +x backup_script.sh`

 4. Execute the script:
 `./backup.sh`
 This will create a new backup file in the destination directory, following the format `web_server_log_backupYYYYMMDD.tar.gz`. The `YYYYMMDD` represents the current date. The script will also handle the deletion of old backup files that exceed the specified number of keeping days.




## Feel free to fork this repository and customize the script to suit your specific requirements.Please make sure to adjust the content according to your needs and preferences.
