echo "Installing VSCode"
choco install visualstudiocode -y

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
cp .\cfg\settings.json $HOME\AppData\Roaming\Code\User\settings.json

# SIG # Begin signature block
# MIIFfwYJKoZIhvcNAQcCoIIFcDCCBWwCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUIiDvEx9APxoGiu2hCHAMl4j6
# +B2gggMUMIIDEDCCAfigAwIBAgIQEt8fR2Y16oVNsrl51ayDBTANBgkqhkiG9w0B
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
# hkiG9w0BCQQxFgQUsOferKwvJKonlk7Vsd5k/l64MlswDQYJKoZIhvcNAQEBBQAE
# ggEAFMtkXaLlDHQhosEPrjwU8bDj6ZBSHPiefLqrnBwlMSKzvWXA6VP3R820PkQ5
# EZsI3wz1X2cON2C4T+liOqlKNvCMCcm26Tna4meFW/IuS2HuHsohc+DjhYoyHFjY
# OpiPwY3HasigR9EjQk6y5/JRTLwTHO2dfEZC68ptwf0+ULPyBw06BOLV9OSJ1EOI
# o7fzOimlUpwed1nKHfrwuyDyCFiWx2JhrT0FOdiTrzQi5PZQuGRKetA9wf6mzBIT
# jtY2BtCRVs58Ca/Rbcsm3IFmPcu3X8TvuXnKv4j21aLBxmFffOw2vb63bKvZn5Bv
# QvJNUqhPDigvnIk7usSIiyecsg==
# SIG # End signature block
