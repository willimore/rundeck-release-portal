. "$PSScriptRoot\config.ps1"

Get-ChildItem `
$BackupPath `
-Filter *.bak |
Sort-Object Name |
Select-Object Name