# Specify the save path
$savePath = "C:\Users\admin\Documents\network_report.txt"

# Create network_report.txt file by running ipconfig /all and saving the output
ipconfig /all > $savePath

# Search for IPv4 address in network_report.txt using Select-String
$ipv4Address = Get-Content $savePath | Select-String -Pattern 'IPv4 Address' | ForEach-Object { $_ -replace '\D+(\d+\.\d+\.\d+\.\d+).*', '$1' }

# Display the IPv4 address
Write-Host "IPv4 Address: $ipv4Address"

# Remove the temporary file
Remove-Item -Path $savePath -Force