## Windows System Restore Q&A

![Backup Visual](/labs/media/backup.png)

### 1. What is the purpose of the Windows System Restore tool?

The purpose of the Windows System Restore tool is to revert the operating system to a previous software, registry, and driver configuration known as a restore point. This can be extremely useful for resolving major issues that may arise.

### 2. How long does it usually take to use the System Restore tool in Windows?

It usually takes between **10 to 30 minutes** to complete the System Restore process in Windows.

### 3. How do you start a System Restore from the command prompt?

To start a System Restore from the command prompt, you would:
1. Open the `Command Prompt`.
2. Type `rstrui.exe` and press `Enter`.
This will open the System Restore wizard, where you can then follow the on-screen instructions to complete the process.

### 4. What options are available if System Restore did not fix the problem?

If System Restore did not resolve the issue, you have a couple of options:
1. **Repeat the System Restore**: You can go through the System Restore process again and choose an even older restore point, assuming one is available.
2. **Continue Troubleshooting**: Keep diagnosing the issue without relying on System Restore.
   - Additionally, if the System Restore ended up causing another issue, you have the option to undo it.

**resources**

[System Restore Article](https://www.lifewire.com/how-to-use-system-restore-in-windows-2626131)

### I wanted to know more about VM and Snapshots over doing a system restore so I asked ChatGPT.

**Advantages of VM Snapshots Over System Restore**

**1. Whole Environment**
- Snapshots capture the entire VM state, not just the Windows operating system.

**2. Speed**
- Generally, restoring from a snapshot can be faster than using Windows System Restore.

**3. Flexibility**
- You can take snapshots frequently and manage them independently of the Windows environment.

**4. Isolation**
- Since snapshots are managed through the VM software, they are not affected by issues within the Windows environment.

In summary, if you're running Windows on a VM and you have taken a snapshot, restoring the snapshot could be a more efficient way to revert to a previous state compared to using Windows System Restore.
