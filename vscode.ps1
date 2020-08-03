echo "Installing VSCode"
choco install visualstudiocode -y

echo "Refresh PowerShell Environment Variables"
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
refreshenv

echo "VSCode 3rd Party Integration Extensions"
code --install-extension icrawl.discord-vscode
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension auchenberg.vscode-browser-preview
code --install-extension donjayamanne.githistory
code --install-extension eamodio.gitlens
code --install-extension eg2.vscode-npm-script
code --install-extension ms-vscode-remote.remote-wsl
code --install-extension ms-azuretools.vscode-docker
echo "VSCode MarkDown Extensions"
code --install-extension bierner.markdown-preview-github-styles
echo "VSCode Themes Extensions"
code --install-extension dracula-theme.theme-dracula
code --install-extension gerane.theme-dark-dracula
code --install-extension pkief.material-icon-theme
code --install-extension CoenraadS.bracket-pair-colorizer
echo "VSCode Intellisense Extensions"
code --install-extension kamikillerto.vscode-colorize
code --install-extension mikestead.dotenv
code --install-extension steoates.autoimport
code --install-extension chenxsan.vscode-standardjs
code --install-extension alefragnani.Bookmarks
code --install-extension dbaeumer.vscode-eslint
code --install-extension redhat.vscode-yaml
code --install-extension esbenp.prettier-vscode
code --install-extension editorconfig.editorconfig
echo "VSCode Chrome Debugger"
code --install-extension msjsdiag.debugger-for-chrome

echo "Update Settings.json"
$settings = $env:OneDrive + "\settings\vscode\settings.json"
if (Test-Path -path $settings)
{ 
  cp $settings $HOME\AppData\Roaming\Code\User\settings.json
}
else
{
  cp .\cfg\settings.json $HOME\AppData\Roaming\Code\User\settings.json
}


# SIG # Begin signature block
# MIIFfwYJKoZIhvcNAQcCoIIFcDCCBWwCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUyaLG+iiBEDQo8Di/3EIMVflv
# O1igggMUMIIDEDCCAfigAwIBAgIQEt8fR2Y16oVNsrl51ayDBTANBgkqhkiG9w0B
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
# hkiG9w0BCQQxFgQU77Xn0toU+jXka3rrjaBRxxSS5+cwDQYJKoZIhvcNAQEBBQAE
# ggEAW0TjeGNhyBfudDUGcFlYeRvqNNo1I7M8lLpUU6a/3K91ucsXNZg7oeLZhkfS
# dZAxupYESm7M+1PZU4u2zN+ARkqtAKLEvqgHY4wkN53TjS3LizxFBIHZZ5tzjnYq
# 6MWS+5d705dm+Gk22yc4Z+/rtmpSKrjUqqPXGr3y+mEMYBG5J6S2M9/an0I9meXt
# 4HctHrhxY7A+31jY7JDhVufF1NtIJ8NFLpGY0yo8CtqRrq66U6L5BFkBYgsUZgL3
# yiuQy3HmS6ZALfSUcVF1t+B9rUdzScRQd2dn4u4A+PcAVQM+LZiPTwrsiVIY86N1
# O7ESfbXb+ZPIcnNdQVKshU5lag==
# SIG # End signature block
