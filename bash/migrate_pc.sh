#!/bin/bash
storage=/media/external_hdd
echo "$(whoami) is doing a backup of its home directory"
# Mount storage
sudo mkdir $storage
sudo mount $1 $storage -o uid=1000,gid=1000,utf8,dmask=027,fmask=137

# Copy backups
backup_path="${storage}"/Backup_PC
sudo mkdir $backup_path
sudo cp -r $HOME $backup_path
