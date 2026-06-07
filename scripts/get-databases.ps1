. "$PSScriptRoot\config.ps1"

$query = @"
SELECT name
FROM sys.databases
WHERE name NOT IN
(
'master',
'model',
'msdb',
'tempdb'
)
ORDER BY name
"@

Invoke-Sqlcmd `
-ServerInstance $SqlServerInstance `
-Query $query