# WebUp

A PowerShell-based website uptime checking utility.

# Getting Started

## 1. Configure SendGrid

This utility uses SendGrid to send email messages. You must first set up a SendGrid account and [configure Single Sender Verification](https://docs.sendgrid.com/ui/sending-email/sender-verification).

Once you have set up a single sender in SendGrid, navigate to Settings > API Keys in the SendGrid interface and note your API key.

## 2. Configure utility

Navigate to the Config folder of this project and rename sendgrid.xml.example to sendgrid.xml.

Open the sendgrid.xml configuration file and insert configuration parameters from SendGrid.

### Example

```
<Config>
  <Token>123</Token>
  <From>sender@example.com</From>
  <FromName>Sender Name</FromName>
  <To>recipient@example.com</To>
  <ToName>Recipient Name</ToName>
</Config>
```

### Parameter Definitions

| Parameter | Description                    |
| --------- | ------------------------------ |
| Token     | Your SendGrid API key.         |
| From      | The email "from" address.      |
| FromName  | The email "from" display name. |
| To        | The email "to" address.        |
| ToName    | The email "to" display name.   |

## 3. Run

Launch PowerShell and navigate to the root folder where you downloaded this utility. For example, if you downloaded the project to "C:\temp\webup", run:

```
Set-Location C:\temp\webup
```

Start the utility:

```
.\Start.ps1
```
