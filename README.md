# Dynamic-IIS-Docker
Dynamicaly loading ASP.NET apps through Mounted Volume

How to Use:
- Create Directory with Structure like this
-- shared
   |
   -- Script
   |
   -- Content
   |
   -- Logs

- Mount Volume for
-- Logs
-- IIS Content Files
-- Script Content

- Docker will execute following script everytime start / restart the container 
<code>
powershell Copy-Item C:\shared\content\* C:\inetpub\wwwroot\ -Recurse & powershell Copy-Item c:\shared\script\script.ps1 c:\script.ps1 & powershell c:\script.ps1 & spinner service w3svc -d
</code>

Thanks for spinner source code <url>https://github.com/Ticketmaster/spinner</url>