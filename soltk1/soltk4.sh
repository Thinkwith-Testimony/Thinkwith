#!/bin/bash

# For this task, let's imagine we have 2 directories: Dir1, Dir2 and 2 files: File1, File2 that we want to backup
backup_files="/path/to/Dir1 /path/to/Dir2 /path/to/File1 /path/to/File2"

# Now let's set up the Remote server details
remote_user="username"
remote_ip="remote_server_ip"
remote_path="/path/on/remote/server"

# Now let's create a compressed archive of the specified directories and files using the tar command.

# Create a timestamp for the backup file
timestamp=$(date +"%Y%m%d_%H%M%S")
backup_file="backup_$timestamp.tar.gz"

# Create the compressed archive
tar -czf $backup_file $backup_files

# Let's transfer the compressed archive to the remote server using SCP. You can use SSH keys for authentication to avoid entering passwords.

scp $backup_file $remote_user@$remote_ip:$remote_path

#Finally, let's clean up by removing the local compressed archive after transferring it to the remote server.

rm $backup_file
