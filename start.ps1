#Windows default apps Check
Write-Host "Do You Want To Remove Windows Default Apps?"
$windowsdapps = Read-Host "Please Enter Your Response (y/n)"

while("y","n","yes","no" -notcontains $windowsdapps)
{
  $windowsdapps = Read-Host "Please Enter Your Response (y/n)"
}

#Git Check
Write-Host "Do You Want To Install Git?"
$git = Read-Host "Please Enter Your Response (y/n)"

while("y","n","yes","no" -notcontains $git)
{
  $git = Read-Host "Please Enter Your Response (y/n)"
}

If ("y","yes" -contains $git) {
  Write-Host "Configuring Git globals"
  $gitUserName = Read-Host 'Enter your name for git configuration'
  $gitUserEmail = Read-Host 'Enter your email for git configuration'
}

#Git SSH Check
Write-Host "Do You Want To Add Your Git SSH Keys?"
$gitssh = Read-Host "Please Enter Your Response (y/n)"

while("y","n","yes","no" -notcontains $gitssh)
{
  $gitssh = Read-Host "Please Enter Your Response (y/n)"
}

#AWS Check
Write-Host "Do You Want To Install AWS Cli?"
$aws = Read-Host "Please Enter Your Response (y/n)"

while("y","n","yes","no" -notcontains $aws)
{
  $aws = Read-Host "Please Enter Your Response (y/n)"
}

#Upwork Check
Write-Host "Do You Want To Install UpWork Timer?"
$upworktimer = Read-Host "Please Enter Your Response (y/n)"

while("y","n","yes","no" -notcontains $upworktimer)
{
  $upworktimer = Read-Host "Please Enter Your Response (y/n)"
}

#Geforce Experience Check
Write-Host "Do You Want To Install Geforce Experience?"
$geforcexp = Read-Host "Please Enter Your Response (y/n)"

while("y","n","yes","no" -notcontains $geforcexp)
{
  $geforcexp = Read-Host "Please Enter Your Response (y/n)"
}

#WSL Check
Write-Host "Do You Want To Install WSL?"
$wsl = Read-Host "Please Enter Your Response (y/n)"

while("y","n","yes","no" -notcontains $wsl)
{
  $wsl = Read-Host "Please Enter Your Response (y/n)"
}

#Docker Desktop Check
Write-Host "Do You Want To Install Docker Desktop?"
$docker = Read-Host "Please Enter Your Response (y/n)"

while("y","n","yes","no" -notcontains $docker)
{
  $docker = Read-Host "Please Enter Your Response (y/n)"
}

#Virtualbox and Vagrant Check
Write-Host "Do You Want To Install Virtualbox and Vagrant?"
$vboxvagrant = Read-Host "Please Enter Your Response (y/n)"

while("y","n","yes","no" -notcontains $vboxvagrant)
{
  $vboxvagrant = Read-Host "Please Enter Your Response (y/n)"
}

If ("y","yes" -contains $vboxvagrant) {
  Write-Host "Inform Path To Save Virtual Machines"
  $virtualFolder = Read-Host "Use Full Path Like D: or D:\Test"

  while(-not (Test-Path $virtualFolder))
  {
    Write-Host "Path Invalid!"
    $virtualFolder = Read-Host "Use Full Path Like D: or D:\Test"
  }
}

If ("y","yes" -contains $windowsdapps) {
  echo "Starting Remove Bloatware Windows 10 Script"
  powershell -File ".\remove-default-apps.ps1"
}

echo "Starting to Configure PC"
powershell -File ".\config.ps1"

echo "Installing Chocolatey"
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco upgrade chocolatey
choco -v
choco feature enable -n=allowGlobalConfirmation
choco feature enable -n=exitOnRebootDetected

If ("y","yes" -contains $git) {
  echo "Starting GIT Script"
  powershell -File ".\git.ps1" $gitUserName $gitUserEmail
}

If ("y","yes" -contains $gitssh) {
  echo "Starting Git SSH Keys Script"
  powershell -File ".\ssh.ps1"
}

echo "Starting Programs Script"
powershell -File ".\programs.ps1"

echo "Starting Node Script"
powershell -File ".\node.ps1"

echo "Starting VsCode Script"
powershell -File ".\vscode.ps1"

If ("y","yes" -contains $aws) {
  echo "Starting Aws Script"
  powershell -File ".\aws.ps1"
}

If ("y","yes" -contains $upworktimer) {
  echo "Starting UpWorkTimer Script"
  powershell -File ".\upworktimer.ps1"
}

If ("y","yes" -contains $geforcexp) {
  echo "Installing Geforce Experience"
  choco install geforce-experience -y
}

If ("y","yes" -contains $vboxvagrant) {
  echo "Starting Vagrant Script"
  powershell -File ".\vagrant.ps1" $virtualFolder

  echo "Starting Virtualbox Script"
  powershell -File ".\virtualbox.ps1" $virtualFolder
}

If ("y","yes" -contains $docker) {
  echo "Starting Docker Script"
  powershell -File ".\docker.ps1"
}

If ("y","yes" -contains $wsl) {
  echo "Starting WSL Script"
  powershell -File ".\wsl.ps1"
  powershell -File ".\ubuntu.ps1"
}

# SIG # Begin signature block
# MIIFfwYJKoZIhvcNAQcCoIIFcDCCBWwCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUobuqwffiSp5b56PVgyIkmdE4
# NxKgggMUMIIDEDCCAfigAwIBAgIQEt8fR2Y16oVNsrl51ayDBTANBgkqhkiG9w0B
# AQUFADAgMR4wHAYDVQQDDBVzYXVsb0BwYXJhbGluay5jb20uYnIwHhcNMjAwMjI0
# MTE1NjMyWhcNMjUwMjI0MTIwNjMyWjAgMR4wHAYDVQQDDBVzYXVsb0BwYXJhbGlu
# ay5jb20uYnIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCug49TZp8m
# ohZJVI4JzKv4sA0EzqfSmyjt1lqdAKY/G2ZwTJpt4JYRw5FFHIwNQDpUDZN539Bl
# ufBvxcP1/kc7eD2zp6b24AnzTPi+o80vHhhNnFja90pz/Y2+nAfwPUVcf+hK+Ve1
# pS35xuQFv9jsJZlP+8FqeVzPdtiaPJaCmNtqJf7CZkbtPQ4wbjQ83K+cv8NUdhbI
# lXLutbPj5b2CV7gQUAPPvqDFvXWfCLgdDCxB0CgsbB8rpb/2q0H4CYCzAZiLrdsK
# dRI7BwxxaV3h2Ofn2fIFLwn+HTqW9xdpkUa4qrWSOFGCMIhy4sLscOLAR6rFM/9H
# 92UjKWlxIM6ZAgMBAAGjRjBEMA4GA1UdDwEB/wQEAwIHgDATBgNVHSUEDDAKBggr
# BgEFBQcDAzAdBgNVHQ4EFgQUmZPngYXsl6R7/c1/CxbfELyzJrQwDQYJKoZIhvcN
# AQEFBQADggEBAFufz2aQYAsraF5TqP+A5O/TnV26uF/rumsrpnh+cpAETiR1cqR5
# K/eJ4yoSxnCLbGmC46a/+Diif6Sac7VoHB4JyuGSlhfN89Cck6+pY56zKDDbN5NM
# ukPcyw+jfAr4KW+O3WdIn/xDzlraWdsvALencuNKOjCGOFoXMAv4NHYyeJ7PzV5D
# HypF6YzWbKdTb+zS6f6BzedcIDrx0i4MmKqW2yw1pXfC82y1iENl5booMD2iuWG6
# XVSg5Nex4zvEP7LMkoP/jihzZvcNaVBs8QH76MIULM1DzF2uby2HeEoBiM+1GhJ1
# N99In5Rr7gGltEL6mb8G12xyl2IWq5ismpYxggHVMIIB0QIBATA0MCAxHjAcBgNV
# BAMMFXNhdWxvQHBhcmFsaW5rLmNvbS5icgIQEt8fR2Y16oVNsrl51ayDBTAJBgUr
# DgMCGgUAoHgwGAYKKwYBBAGCNwIBDDEKMAigAoAAoQKAADAZBgkqhkiG9w0BCQMx
# DAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAjBgkq
# hkiG9w0BCQQxFgQULaC5+Ngcvsatq36ds4akqdTCDB8wDQYJKoZIhvcNAQEBBQAE
# ggEATHVP2NkfpERKCAKp9c8uAMtTYNmJqL3ec0TG8rM2vNLwMIaqqxbHYdDUO3NN
# Se6Fui8NKVhyI/l5Q1wfCG8vAv1K/7Tj/KtXDAs9/0jNXZrEcBlqIsNhKau2pFh5
# v9DR8XzRtfyY1HYlcnKRCXXCvnR18YWe2h2tVVuF6lQefXxIjFyCT7fPy45PA71w
# DkCaL/wmQ5dluBcdW7PnNqqDMF3UVpVdyf5fjj7OPgId3kwfZocMWd1p4riqIHLD
# yEmXCjorRpYsr0UP1w58PIn7Z5BppBOut2NSjXMUZgNXhLSOW8NtBeN6ks8iAw2X
# CdodJAKO0JQ9UVvHFJw9l2FvmQ==
# SIG # End signature block
