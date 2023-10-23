# Backup Your System

### Part 1 - Backup & Restore a Windows 10 VM with VirtualBox

1. Is the testfile.txt present on the desktop?  
   - no
   - the .ova was created in prior to creating the testfile.txt

2. Where is the VM hard drive file located?
   - `/home/andrew/VirtualBox VMs/Windows 10/Windows 10.vdi`

3. What is this file?
   - .vdi; virtual disk image
   - this is the image of windows 10
   - the virtual "hard drive"

4. What does the extension signify?
   - the extension signifies the file format of the virtual disk

5. What extension would a VMware hard drive file use instead?
   - typically a `.vmdk` extension for virtual hdd

6. How is it different from .ova?
   - `.ova` is an archive containing config files, virtual disks, and user data
   - `.vdi` is just a disk image wtihout the config files

### Part 2 - Using VirtualBox Snapshots

1. Restore from the snapshot.  Does the new file exist?
   - No, the new file does not exist because the snapshot was taken prior to the creation of the new file on the desktop.

### Part 3 - System Restore

1. In this case Chrome is restored because I had installed it prior to this lab.  Testfile.txt is not present because it was moved to the trash.

### Part 4 - Lab Documentation

1. How will I restore my Ubuntu system if something with the OS goes wrong?
   - I had to look this up.  We haven't done any specific backups for Linux.  Based on the research it seems like `rsync` will be a good option to create system restore points for my Ubuntu home directory

2. How will I restore Windows 10 VM if something with the OS goes wrong?
   - Snapshots and or system restore points are a great option.  They can be set up to full restores or incremental backups.

3. How am I documenting the following lab computer information?
   - Right now I just created a chonk.md in my Ops201 repo.  This will be my lab computer readme.
     - I will trak the following information
       - Network Configuration
       - Passwords
       - Installed Software
  - This will be added to my .gitignore so it isn't pushed up to github.
  - The installed software will go in there as it grows.  The current setup is all the defaults and the only additions i've made is Chrome.