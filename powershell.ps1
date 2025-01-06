$progressPreference = 'silentlyContinue'
Write-Host "Installing WinGet PowerShell module from PSGallery..."
Install-PackageProvider -Name NuGet -Force | Out-Null
Install-Module -Name Microsoft.WinGet.Client -Force -Repository PSGallery | Out-Null
Write-Host "Using Repair-WinGetPackageManager cmdlet to bootstrap WinGet..."
Repair-WinGetPackageManager

Write-Host "Removing the msstore source for WinGet..."
winget source remove msstore

########################################################################################
# Install applications using WinGet

Write-Host "Installing Notepad++ using WinGet..."
winget install Notepad++.Notepad++

Write-Host "Installing 7-Zip using WinGet..."
winget install 7zip.7zip

Write-Host "Installing Microsoft Powershell using WinGet..."
winget install Microsoft.PowerShell

Write-Host "Installing VLC Media Player using WinGet..."
winget install VideoLAN.VLC

Write-Host "Installing Git using WinGet..."
winget install Git.Git