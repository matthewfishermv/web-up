Function Send-EmailAlert {
  param ([String]$SiteName)

  # Load email configuration.
  $Config = ([Xml] (Get-Content .\Config\sendgrid.xml)).Config

  $Body = @{
    "personalizations" = @(
      @{
        "to" = @(
          @{
            "email" = $Config.To.ToString()
            "name"  = $Config.ToName.ToString()
          }
        )
        "subject" = "Website is DOWN"
      }
    )
    "content" = @(
      @{
        "type"  = "text/plain"
        "value" = "Your website ($SiteName) is DOWN."
      }
    )
    "from" = @{
      "email" = $Config.From.ToString()
      "name"  = $Config.FromName.ToString()
    }
  }

  $BodyJson = $Body | ConvertTo-Json -Depth 4

  $Header = @{
    "authorization" = "Bearer " + $Config.Token.ToString()
  }

  $Parameters = @{
    Method      = "POST"
    Uri         = "https://api.sendgrid.com/v3/mail/send"
    Headers     = $Header
    ContentType = "application/json"
    Body        = $BodyJson
  }

  Invoke-RestMethod @Parameters

}
