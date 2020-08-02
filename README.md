# w10starter

PowerShell Script to Configure Windows 10

[Gist](https://gist.github.com/saulonunesdev/412d062ee9a4f313bf96f586a5088f82)

## Before You Start

Save your Git SSH And Aws Key Into One Driver Folder

```
$env:OneDrive\keys\git\id_rsa
$env:OneDrive\keys\git\id_rsa.pub
$env:OneDrive\keys\.aws\config
$env:OneDrive\keys\.aws\credentials
```

## How To Use It

Run From a Elevated PowerShell (Run as Administrator)

```
iex ((New-Object System.Net.WebClient).DownloadString('https://gist.githubusercontent.com/SauloNunes/412d062ee9a4f313bf96f586a5088f82/raw/Win10ConfigStarter.ps1'))
```

## After the Script

### Add SSH Key

Run in a new PowerShell

```
.\ssh.ps1
```
