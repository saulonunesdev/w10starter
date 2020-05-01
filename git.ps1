param([String] $UserName, [String] $UserEmail)

echo "Installing GIT"
choco install git.install -y

echo "Configuring GIT"
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 
git config --global user.name $UserName
git config --global user.email $UserEmail
git config --global core.fileMode false
git config --global core.autocrlf false
git config --list

echo "Installing Github Desktop"
choco install github-desktop -y

echo "Installing Git Completion for PowerShell"
choco install poshgit -y

#Windows SSH Key Must Be id_rsa or will fail with permission denied
echo "Saving SSH Key"
md $HOME/.ssh
cp $env:OneDrive\keys\git\id_rsa $HOME\.ssh\id_rsa
cp $env:OneDrive\keys\git\id_rsa.pub $HOME\.ssh\id_rsa.pub

# SIG # Begin signature block
# MIIFfwYJKoZIhvcNAQcCoIIFcDCCBWwCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUsWnZX6d/xFeZ2shyEfwT+4M2
# PXWgggMUMIIDEDCCAfigAwIBAgIQEt8fR2Y16oVNsrl51ayDBTANBgkqhkiG9w0B
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
# hkiG9w0BCQQxFgQUfyrBk4thv8PCaPgGVdCDtQEvAyYwDQYJKoZIhvcNAQEBBQAE
# ggEAJE2KatF2JIvA1ytKU2VOgfH5+xnYrwaMh18H6Hl/67ZLCHavRhvNppMaBm8i
# LD7pkx2HSq2+im7k7iPQr9GNoVtMlu8yDn7ciVSZsHb7MO6F5eTskH6PfUThiqr4
# TkSDGgg1KsWdNRjwi8xU5w9VBw07lNMaadgKZaEuTYNl57XLuOSYpcM+wesEmIoF
# gkEXmRfLk4YLZpFOTvB3PRXRtU5yjskbBOUddEh3wL8L9Iud6JJ/IZ0Oczhte+hI
# Io3j9iz7QvBn00CpeZGU+3C2Y7VRnD7a1eOfem4ChTwAZHnzsgh4LVvAtFLlI/Uq
# KJ0kDg5B1pNbj7O8IC/ZEZpkAg==
# SIG # End signature block
