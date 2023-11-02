# Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
Get-WinEvent -LogName System -MaxEvents ([System.Int32]::MaxValue) | Where-Object {$_.TimeCreated -gt (Get-Date).AddHours(-24)} | Out-File -FilePath "$env:C:\Users\admin\Desktop\last_24.txt"
# Get-WinEvent -LogName System -MaxEvents 0 | Where-Object {$_.TimeCreated -gt (Get-Date).AddHours(-24)} | Out-File -FilePath "$env:C:\Users\admin\Desktop\last_24.txt"

# Output all “error” type events from the System event log to a file on your desktop named errors.txt.
Get-WinEvent -LogName System -MaxEvents ([System.Int32]::MaxValue) | Where-Object {$_.LevelDisplayName -eq "Error"} | Out-File -FilePath "$env:C:\Users\admin\Desktop\errors.txt"
# Get-WinEvent -LogName System | Where-Object {$_.LevelDisplayName -eq "Error"} | Out-File -FilePath "$env:USERPROFILE\Desktop\errors.txt"

# Print to the screen all events with ID of 16 from the System event log.
Get-WinEvent -LogName System | Where-Object {$_.Id -eq 16}

# Print to the screen the most recent 20 entries from the System event log.
Get-WinEvent -LogName System -MaxEvents 20

# Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed.
Get-WinEvent -LogName System -MaxEvents 500 | Format-Table -Property ProviderName, Id, Message -AutoSize -Wrap
