Function CheckUptime {
  param([String]$Url)
  try {
    If ((Invoke-WebRequest $Url).StatusCode -Eq 200) { Write-Host "Website is up." }
    Else { "Failed." }
  }
  catch {
    Write-Host "Failed."
  }
}
