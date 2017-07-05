# dirty jobs
powershell Copy-Item C:\shared\content\* C:\inetpub\wwwroot\ -Recurse -force

# script for IIS
Import-Module IISAdministration
$manager = Get-IISServerManager
$website.LogFile.Directory="C:\inetpub\SharedLogs"
$manager.CommitChanges()

# service monitor running
c:\servicemonitor.exe w3svc