



# Allow ICMP traffic
Enable-NetFirewallRule -Name "FPS-ICMP4-ERQ-In"

# Enable Remote management (WinRM)
Set-ExecutionPolicy RemoteSigned -Force
Enable-PSRemoting -Force

# Remove bloatware (Uninstalling specific apps, customize as needed)
Get-AppxPackage -AllUsers | Where-Object { $_.Name -like "*bloatware*" } | Remove-AppxPackage -AllUsers

# Enable Hyper-V (if not already enabled)
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All

# Disable SMBv1
Set-SmbServerConfiguration -EnableSMB1Protocol $false

# Testing



# $firewallRule = Get-NetFirewallRule -Name "FPS-ICMP4-ERQ-In"
# if ($firewallRule.Enabled) {
#     Write-Host "ICMP traffic is allowed."
# } else {
#     Write-Host "ICMP traffic is not allowed."
# }

# if (Test-WSMan) {
#     Write-Host "Remote management (WinRM) is enabled."
# } else {
#     Write-Host "Remote management (WinRM) is not enabled."
# }

# $bloatwareApps = Get-AppxPackage -AllUsers | Where-Object { $_.Name -like "*bloatware*" }
# if ($bloatwareApps -eq $null) {
#     Write-Host "Bloatware apps are successfully removed."
# } else {
#     Write-Host "Bloatware apps are still installed."
# }

# $hyperVEnabled = Get-WindowsOptionalFeature -FeatureName Microsoft-Hyper-V-All | Where-Object { $_.State -eq "Enabled" }
# if ($hyperVEnabled) {
#     Write-Host "Hyper-V is enabled."
# } else {
#     Write-Host "Hyper-V is not enabled."
# }

# $smbConfig = Get-SmbServerConfiguration
# if ($smbConfig.EnableSMB1Protocol -eq $false) {
#     Write-Host "SMBv1 is successfully disabled."
# } else {
#     Write-Host "SMBv1 is not disabled."
# }
