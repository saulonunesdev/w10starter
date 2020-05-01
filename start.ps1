Write-Host "Configuring Git globals"
$gitUserName = Read-Host 'Enter your name for git configuration'
$gitUserEmail = Read-Host 'Enter your email for git configuration'

#Write-Host "Inform Folder Directory To Save Virtual Machines"
#$virtualFolder = Read-Host 'Use Full Path Like D: or D:\Test'

echo "Starting to Configure PC"
powershell -File ".\config.ps1"

echo "Installing Chocolatey"
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco upgrade chocolatey
choco -v
choco feature enable -name=exitOnRebootDetected

echo "Starting GIT Script"
powershell -File ".\git.ps1" $gitUserName $gitUserEmail

echo "Starting Node Script"
powershell -File ".\node.ps1"

echo "Starting Programs Script"
powershell -File ".\programs.ps1"

echo "Starting VsCode Script"
powershell -File ".\vscode.ps1"

#echo "Starting UpWorkTimer Script"
#powershell -File ".\aws.ps1"

#echo "Starting UpWorkTimer Script"
#powershell -File ".\upworktimer.ps1"

#echo "Starting Vagrant Script"
#powershell -File ".\vagrant.ps1" $virtualFolder

#echo "Starting Virtualbox Script"
#powershell -File ".\virtualbox.ps1" $virtualFolder

#echo "Starting Docker Script"
#powershell -File ".\docker.ps1"

#echo "Installing Geforce Experience"
#choco install geforce-experience -y

# SIG # Begin signature block
# MIIFfwYJKoZIhvcNAQcCoIIFcDCCBWwCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUJq205b7BTZJMai/GJSlmD8E8
# qn2gggMUMIIDEDCCAfigAwIBAgIQEt8fR2Y16oVNsrl51ayDBTANBgkqhkiG9w0B
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
# hkiG9w0BCQQxFgQUeTt8c5K5BVtV7oVauJ7ct3zKqvowDQYJKoZIhvcNAQEBBQAE
# ggEAD83MaiAuTekpOCM9EIS0m40jyAAP48CWdcvbnVWthrrVQiBAMpQWqSOq45aK
# vd1rok7uOAREtgFpN5qOQ1I0n8rnvWZ7wId0TeKewa7S/ol68xLwzLUWVS33WDhg
# /UCp69dTIdVnwCDTC6tSdvvLt71ZLngD6K81tXqDlL9ds0eFYNGf1GgrykykMUYH
# djm+L3CpXBRD/vgc/NhiaRzECa2eFbf8KAcCirfCsu492ytXSRbyB4BhhF6Ksg4x
# 7YcYVZjuPLqHR5GKt8jsSj7A+6lqMIV9Gt9TcT2K4BwXtZLiK0SR911PsygKPBLc
# Croo/MY1X4+g4QdlkaiE3c7qzw==
# SIG # End signature block
