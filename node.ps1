echo "Checking Available Node.js Versions"
nvm list available

echo "Installing Node.js LTS 12.18.3"
nvm install 12.18.3

echo "Checking Node Installed Versions"
nvm list

echo "Selecting Node Version to Use"
nvm use 12.18.3

echo "Checking Node Version"
node --version
npm --version

echo "Install Npm Completion"
Install-Module -Name npm-completion -Force
Add-Content $profile -value "Import-Module npm-completion"

#npm install --global --production windows-build-tools
#npm config set msvs_version 2015 --global
#npm config set python python2.7
#npm install -g http-server
#npm install -g electron

#echo "Installation Node"
#choco install -y nodejs.install
#choco install -y python2
#choco install -y yarn
#choco install -y microsoft-build-tools-2013
#
#echo "Packages And Configuration"
#$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 
##npm install --global --production windows-build-tools
##npm config set msvs_version 2015 --global
##npm config set python python2.7
#npm install -g http-server
#npm install -g electron

# SIG # Begin signature block
# MIIFfwYJKoZIhvcNAQcCoIIFcDCCBWwCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUcjbMA678EAmbVSCCeJVwoOFw
# LO2gggMUMIIDEDCCAfigAwIBAgIQEt8fR2Y16oVNsrl51ayDBTANBgkqhkiG9w0B
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
# hkiG9w0BCQQxFgQUQtp2EGXfEQHeOgQcN/kqo9scQhkwDQYJKoZIhvcNAQEBBQAE
# ggEAIHYnZ/aeOk0FG1F19vjsTjOuJMEwMOUP9AGoRdquyO/WqbIWGJ7RdnAF158O
# GWFz/KHFLX6rUXg56cjOHIlZFE6k5W8IMrry+eLK9ZY5tpVWhgxkXXCcE+SMfWXk
# 4OxU0SH1Llv6KS6JaxfYJhOwImtFzhKov/EdThWsoFXzHbpOgtzq+TB6IMvXDIzF
# sZw2/7t3IaNUPUyz9APhO36leqm0ByPr9IR//B76BJ/GHBhEnGHyq/SbZck2mV34
# w4TpED2OrRegih3QMaVy6Q3Pje9rNcYFXcqAbh/SYbP2c80Thg4wB0LPalPsmAdE
# dKBKY+QZAciKtC3CjCc8nQwE+Q==
# SIG # End signature block
