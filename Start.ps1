Param (
  [parameter(Mandatory = $True, HelpMessage = "System path where the webup utility is saved. Example: 'C:\temp\webup'")]$UtilityPath,
  [parameter(Mandatory = $True, HelpMessage = "Display name for the website. Example: 'My Website'")]$SiteName,
  [parameter(Mandatory = $True, HelpMessage = "The website's URL. Example: 'https://matthewfishermv.com'")]$Url
)

Set-Location $UtilityPath

Import-Module .\Private\GetUptime.psm1 -Force
Import-Module .\Private\SendEmailAlert.psm1 -Force

Get-Uptime -SiteName $SiteName -Url $Url
