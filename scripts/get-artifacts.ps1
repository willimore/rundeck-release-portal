. "$PSScriptRoot\config.ps1"

Get-ChildItem `
$ArtifactPath `
-Include *.war,*.ear `
-Recurse |
Sort-Object Name |
Select-Object Name