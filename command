$PSVersionTable.PSVersion

Install-Module -Name AzureRM -AllowClobber
Import-Module AzureRM
Update-Module -Name AzureRM
Get-Module -Name AzureRM -List | select Name,Version


$Profile.CurrentUserAllHosts

if (!(Test-Path -Path $Profile.CurrentUserAllHosts))
{New-Item -ItemType File -Path $Profile.CurrentUserAllHosts -Force}

notepad $Profile.CurrentUserAllHosts


Enable-AzureRmContextAutosave
Get-AzureRmContext

