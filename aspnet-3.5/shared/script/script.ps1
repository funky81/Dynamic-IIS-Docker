# script for IIS
Import-Module IISAdministration
$manager = Get-IISServerManager
$website=$manager.Sites[0]
$website.LogFile.Directory="C:\inetpub\logs"
$manager.CommitChanges()   