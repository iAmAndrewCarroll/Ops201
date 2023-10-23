## Backup Commands for Ubuntu

### Using rsync
Backup your home directory to an external drive:

    $ rsync -av --delete ~/ /media/your-external-drive/backup/

### Using tar
Create a compressed archive of your home directory:

    $ tar -czvf /media/your-external-drive/backup/home_backup.tar.gz ~/

### Backup Installed Packages List
Save a list of all installed packages:

    $ dpkg --get-selections > /media/your-external-drive/backup/package_list.txt

To restore them later:

    $ sudo dpkg --set-selections < /media/your-external-drive/backup/package_list.txt
    $ sudo apt-get dselect-upgrade

### Automating Backup with Cron
Schedule an `rsync` backup to run every day at midnight:

    $ 0 0 * * * rsync -av --delete ~/ /media/your-external-drive/backup/

