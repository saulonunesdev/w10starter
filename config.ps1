echo "Setting Execution Policy To All Signed"
Get-ExecutionPolicy
Set-ExecutionPolicy RemoteSigned -Force
Get-ExecutionPolicy

#echo "Updating Windows"
#Get-WindowsUpdate
#Install-WindowsUpdate -AcceptAll -IgnoreReboot

echo "Show Hidden Files"
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v Hidden /t REG_DWORD /d 0x1 /f
reg query HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v Hidden

echo "Show Files Extension"
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v HideFileExt /t REG_DWORD /d 0x0 /f
reg query HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v HideFileExt

echo "Starting Remove Bloatware Windows 10 Script"
powershell -File ".\remove-default-apps.ps1"

echo "Downloading Fonts for ZSH in PowerShell"
wget https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf -OutFile Meslol20Reg.ttf
wget https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold.ttf -OutFile Meslol20Bold.ttf
wget https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Italic.ttf -OutFile Meslol20Italic.ttf
wget https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold%20Italic.ttf -OutFile Meslol20BoldItalic.ttf
wget https://github.com/Falkor/dotfiles/blob/master/fonts/SourceCodePro+Powerline+Awesome+Regular.ttf?raw=true -OutFile AwesomeRegular.ttf 

echo "Copying Fonts to Windows Fonts Folder"
copy *.ttf "C:\Windows\Fonts"

echo "Installing Fonts for ZSH in PowerShell"
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "FontName (TrueType)" /t REG_SZ /d Meslol20Reg.ttf /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "FontName (TrueType)" /t REG_SZ /d Meslol20Bold.ttf /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "FontName (TrueType)" /t REG_SZ /d Meslol20Italic.ttf /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "FontName (TrueType)" /t REG_SZ /d Meslol20BoldItalic.ttf /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "FontName (TrueType)" /t REG_SZ /d AwesomeRegular.ttf /f
rm *.ttf

echo "Enable SSH Service"
Get-Service -Name ssh-agent | Set-Service -StartupType Automatic
Start-Service ssh-agent

# SIG # Begin signature block
# MIIFfwYJKoZIhvcNAQcCoIIFcDCCBWwCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUlvjkDMPhyTwIpwB+mYLHYJjN
# qV6gggMUMIIDEDCCAfigAwIBAgIQEt8fR2Y16oVNsrl51ayDBTANBgkqhkiG9w0B
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
# hkiG9w0BCQQxFgQUEudKHjTBFbr0pUnmE1P+m5vg1NcwDQYJKoZIhvcNAQEBBQAE
# ggEAAvaNj3M1H3Md9FfQcAuiF/FsT5/QfFj4jsXH7JaZE/0Pf26Q+NND93A7kG5R
# 4hcqRKqy+JuSdxevnVULaV/GN22D3N9gDrIO230bcoNfYhYI9ktyiduJNmXIW5c7
# O8+a9p2e1Bbqh1DCdylazkOgA7/FGbUD6zJ/+1mZUdqwk/Z25wj0PIiTb6apqd4r
# Qk0jPicjapCHBhD7gz6HwgGqR2TpKIBugLMveO488D+YYnBj//EHvvd9Sb1Zo4Lu
# Tlahe1+EIRV83H8vJhu+14JFSTtc+SgSwlcpziGTCOqBpTWA1lBvaziPvOO/z8vT
# AxVOBtcChUv4it0rHgP14wP8JQ==
# SIG # End signature block
