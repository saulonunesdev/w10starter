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
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUXV9ZC/1N41/tEUrb5xe3n9Fg
# ozKgggMUMIIDEDCCAfigAwIBAgIQEt8fR2Y16oVNsrl51ayDBTANBgkqhkiG9w0B
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
# hkiG9w0BCQQxFgQUOalKLnm39F2wkzw2jx7hU9KFz+EwDQYJKoZIhvcNAQEBBQAE
# ggEAmkRafJ+6Xy3jNKAELDTBF/ETKq7CqMBcsMaKvhcptV8gfspw2mckY1pWV058
# WVjpzkiCPU4mnjSd+koOUaQu8Gns9N4rIhS6vtZbC1LlWC+Fq0joCE2Sm82/o7Hi
# qCpF3MTAEOddYIhGruappzq05odZI0h6E7e69TSDs88UGWd8jFusZZXcuAObfb8X
# kd2Ynyx2accn9ZL0zMlqoKvc3b57QYlT6JrdwcyxP+6FJ3YSRBi5KH/F53TEg6ZQ
# lIyfN3ryjR9rJ6xN7PmarbnVIhdobiOlpf+04Bqo/Es/5jSAWD9rBgSIQbfJkte8
# pUr2P4ZQOJS28GysTogYjgQjFA==
# SIG # End signature block
