Import-Module ServerManager

# Create a symlink and make a network share for the shared Vagrant folder to bypass a known issue with IIS sites and VirtualBox shared drives.
$appDirExists = Test-Path C:\website1
$networkShareExists = Get-WmiObject Win32_Share -Filter "path='C:\\website1'"

If (!$appDirExists)
{
	Start-Process "cmd.exe" -ArgumentList "/c mklink /d C:\website1 C:\website1_sym" -Wait | Out-Null
}

if ($networkShareExists -eq $null)
{
	(Get-WMIObject Win32_Share -List).Create("C:\website1", "website1_share", 0)
}
