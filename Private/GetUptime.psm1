Function Get-Uptime {
  param (
    [String]$Url,
    [String]$SiteName
  )
  try {
    If ((Invoke-WebRequest $Url).StatusCode -Eq 200) {}
    Else { Send-EmailAlert -SiteName $SiteName }
  }
  catch { Send-EmailAlert -SiteName $SiteName }
}
