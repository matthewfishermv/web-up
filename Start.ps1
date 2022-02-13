Import-Module .\Private\GetUptime.psm1 -Force
Import-Module .\Private\SendEmailAlert.psm1 -Force

Get-Uptime -SiteName "Lucky Hank's" -Url "https://luckyhanksmv.com"
