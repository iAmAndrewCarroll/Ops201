# Function to get IPv4 address
function Get-IPv4Address {
    $ipConfigOutput = ipconfig /all
    $ipAddress = $ipConfigOutput | Select-String -Pattern 'IPv4 Address' | ForEach-Object { $_ -replace '\D+(\d+\.\d+\.\d+\.\d+).*', '$1' }
    return $ipAddress
}

# Create network_report.txt file
ipconfig /all > network_report.txt

# Get IPv4 address using the function
$ipv4Address = Get-IPv4Address

# Display the IPv4 address
Write-Host "IPv4 Address: $ipv4Address"

# Remove the network_report.txt file
Remove-Item -Path "network_report.txt" -Force
