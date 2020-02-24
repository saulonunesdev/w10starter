echo "Installing Vagrant"
choco install vagrant -y

echo "Create VAGRANT BOXES Directory"
cd $args[0]
md Vagrant
cd Vagrant
md Boxes
$VagrantHomeFolder = $args[0] + "\Vagrant\Boxes"

echo "Change VAGRANT BOXES Directory"
[Environment]::SetEnvironmentVariable("VAGRANT_HOME", $VagrantHomeFolder, "Machine")

#echo "Checking Current BOX Folder"
echo "Refresh PowerShell Environment Variables"
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 
refreshenv

echo "Installing Vagrant Virtualbox Guest"
vagrant plugin install vagrant-vbguest
# SIG # Begin signature block
# MIIFfwYJKoZIhvcNAQcCoIIFcDCCBWwCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUCLsPWpN3fPNVLf6Wu+YrgFLZ
# ns+gggMUMIIDEDCCAfigAwIBAgIQEt8fR2Y16oVNsrl51ayDBTANBgkqhkiG9w0B
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
# hkiG9w0BCQQxFgQUXGwHqgyiYVFSc2GJ/6cGrIoCrXQwDQYJKoZIhvcNAQEBBQAE
# ggEATmeqygJT/NZjI91UmZDpQ6RdinBqe/2vd3nUDG4nvZP/XiBpUArisriWp/Az
# rOqA9Pz5VJ3xmVtcoB0Sef1+s8r59fVa59GmUBJVvP6gcBQnB78tCzP+MEWSoNk+
# rQnsAuDGmTUA9dvDIb+krA7WaInvowQ0/GV+ODgtwcYjBFCbwZ3v8N4m0xTs2BRT
# CvjfGBdg+R28fkV/px5Wn9SZM7SaBV/p5GLPLOzR9ymGw/VEt/W0y/BDI7Qa5nSH
# 8YLwlqCoYpZSapqK1TSBkOXXRASBAta73FjqoHtxZqcrc03yveuT1tG2369llGa9
# 6j1w5hWsfV1iSyKAvCyalPyTyQ==
# SIG # End signature block
