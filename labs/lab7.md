# Lab 7

**OS Upgrade & Remote Access**

**Resources**
- [How to Run PowerShell Commands on Remote Computers](https://www.howtogeek.com/117192/how-to-run-powershell-commands-on-remote-computers/)
- [ops201-class07.ova and Windows 10 ISO](https://codefellows.github.io/ops-201-guide/curriculum/#course-schedule){:target="_blank"}
- [Microsoft Docs: Invoke-Command](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/invoke-command?view=powershell-7.1)
- [Guide to running remote PowerShell commands on a Workgroup](https://www.howtogeek.com/117192/how-to-run-powershell-commands-on-remote-computers/)

**Scenario**
Larry Moseman: "Hello tech team, I've been putting off the upgrade to Windows 10 for months but now I need it to run some specialized software. I need to keep my existing user profile data though. I'll be gone all day so it's yours to tinker with!"

In addition to Larry's requests, you are prepping his computer today to be remote-administratable by your team using Powershell. The systems administrator at your company recently notified you that Larry's computer in shipping is not remotely accessible via Powershell and therefore does not conform to SOP in the company.

**Credentials**
- ops201-class07.ova
  - Admin: admin / solarwinds123
  - User(local): shipping / vegetarian123

**What I Did**
1. Create new VM in VirtualMachine - ops201-class07.ova
2. Login as admin
3. Go to Disk Management
4. Right click C: > Shrink Volume > Follow wizard
5. Right click unallocated space > New Simple Volume > Follow wizard
6. Got to file explorer > C: > Users 
7. Copy shipping folder to new drive
8. Shutdown VM
9. Modify boot order to prioritize optical drive
10. Mount Windows 10 ISO to optical drive
11. Boot VM > Follow Wizard
12. Login as admin
13. Copy shipping folder to C: > Users in Windows 10
14. Right click the Network Connection in the system tray (bottom right of Windows 10) > Open Network & Internet Settings > Change Adapter Options to Private
15. My two IP Addresses for this lab (make sure you are on the right IP address schema.  I made the error of not having a Bridged Network type)
    - 10.0.2.5 - sysAdmin
    - 10.0.2.15 - shipping 
16. Open Powershell as admin
17. Run the following command to enable remote access to the shipping computer
    - `Enable-PSRemoting -Force`
      - encountered no errors
    - `Restart-Service WinRM`
    - **Still Getting an Error**
      - Windows Defender > Inbound/Outbound > New Rule > Custom > C:\Windows\System32\svchost.exe > allow it all
        - This didn't work so we *deactivated all the rules that had been created in this lab and lab 6*
      - Still erroring out so we went into the **Windows Defender Firewall Properties** > Domain & Private tabs > Inbound Connections > Allow
      - **Issues Resolved**

**Showing the Output of `Invoke-Command -ComputerName 10.0.2.15 -ScriptBlock {ipconfig} -Credential admin`**
![lab7-1](media/lab7-1.png)

**Stretch Goals**

Security Concerns with Larry's RDP...
- So So many concerns.  This is like a wide open come get me honey pot.  We had to deactivate so many protective measures to get this to work.  Holes.  SO So many holes.