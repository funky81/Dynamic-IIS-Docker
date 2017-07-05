# Dynamic-IIS-Docker
Dynamicaly loading ASP.NET apps through Mounted Volume

How to Use:

- Create Directory with Structure like this

   - Script
   - Content
   - Logs

- Mount Volume for

   - Script
   - Content
   - Logs

- Docker will execute following script everytime start / restart the container 

```sh
powershell Copy-Item C:\shared\content\* C:\inetpub\wwwroot\ -Recurse & powershell Copy-Item c:\shared\script\script.ps1 c:\script.ps1 & powershell c:\script.ps1 & spinner service w3svc -d
```

Thanks for spinner source code <url>https://github.com/Ticketmaster/spinner</url>
