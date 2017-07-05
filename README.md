# Dynamic-IIS-Docker
Dynamicaly loading ASP.NET apps through Mounted Volume

## How to Use:

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

## Example

```sh
docker run -d --name aspnet-3.5 -v C:\ClusterStorage\Volume1\Container\content\:c:\shared\content -v c:\ClusterStorage\Volume1\Container\LogFiles\:c:\inetpub\logs\ -v C:\ClusterStorage\Volume1\Container\script\:c:\shared\script -p 84:80 aspnet-3.5
```

Thanks for spinner source code <url>https://github.com/Ticketmaster/spinner</url>
