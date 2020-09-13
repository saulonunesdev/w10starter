echo "Downloading Ubuntu 18.04 Package"
Invoke-WebRequest -Uri https://aka.ms/wsl-ubuntu-1804 -OutFile Ubuntu.appx -UseBasicParsing

echo "Adding Ubuntu 18.04 Package"
Add-AppxPackage .\Ubuntu.appx

echo "Installing Ubuntu 18.04"
ubuntu1804.exe exit

echo "Cleaning Temp Files"
rm .\Ubuntu.appx

echo "Setting Default Ubuntu 18.04 As Default WSL"
wslconfig.exe /s Ubuntu-18.04

echo "Checking Ubuntu WSL"
wsl -l -v

#echo "Ubuntu Apps Installation Script"
#wsl ./ubuntu/start.sh

# SIG # Begin signature block
# MIIFfwYJKoZIhvcNAQcCoIIFcDCCBWwCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUKvrloyYbO077APj4jZGb1LBG
# OFSgggMUMIIDEDCCAfigAwIBAgIQEt8fR2Y16oVNsrl51ayDBTANBgkqhkiG9w0B
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
# hkiG9w0BCQQxFgQUvxEMBL0dJoinmlD7Yj088AizyS4wDQYJKoZIhvcNAQEBBQAE
# ggEAdUMks8S/54itwk77lL7JURz0r/BKqNXZ6KgrqaAT+IL1fkJtk4aS2ewkcQQ1
# 1ceYVK9rqIpMvn9eKPBW5LhZCwd6y06jolaZTPuI0UKv+9GRE6vIAzyL51HKDhms
# 4EPlWGDilVoU3kRAP+AjZX0rhLN49PTg6hL2/jopJEiMvltWLf/yTRk2t/xtQKTP
# HhP+s1HnboZc8S55gxf+Z8PKoHiVjcx82q5G1d9w9Amm9WQLjK8cJpUScr2nxMV4
# AUmNOEjjzXEvrakLhlyKdV2BGXM6NqIGA3CJGD45R8h0u3pqnPrZyQI6OT4dsa9I
# kKLbrv7j67GjOLpR3TwQ0psv2w==
# SIG # End signature block
