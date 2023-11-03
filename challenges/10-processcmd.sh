#!/bin/bash

# Script:                     Login History  
# Author:                     Andrew Carroll  
# Date of latest revision:    11/3/2024  
# Purpose:                    Ops 201 Challenge 10

# Task 1: Print active processes ordered by highest CPU time consumption
Get-Process | Sort-Object -Property CPU -Descending

# Task 2: Print active processes ordered by highest Process Identification Number (PID)
Get-Process | Sort-Object -Property Id -Descending

# Task 3: Print the top five active processes ordered by highest Working Set (WS(K))
Get-Process | Sort-Object -Property WS -Descending | Select-Object -First 5

# Task 4: Start a browser process and open a URL
Start-Process "chrome.exe" "https://owasp.org/www-project-top-ten/"

# Task 5: Start Notepad ten times using a for loop
for ($i = 1; $i -le 10; $i++) {
    Start-Process -FilePath "notepad.exe"
}

# Task 6: Close all instances of Notepad
Get-Process -Name "notepad" | ForEach-Object { $_.CloseMainWindow() }

# Task 7: Kill a process by its Process Identification Number (PID)
# Note: Replace "12345" with the actual PID of the process you want to terminate.
Stop-Process -Id 12345 -Force
