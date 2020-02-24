param([String] $UserName, [String] $UserEmail, [String] $PrivateKey, [String] $PublicKey, [String] $KeyPairName)

echo "Installing GIT"
choco install git.install -y

echo "Configuring GIT"
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 
git config --global user.name $UserName
git config --global user.email $UserEmail
git config --list

echo "Installing Github Desktop"
choco install github-desktop -y

echo "Enable SSH Service"
Get-Service -Name ssh-agent | Set-Service -StartupType Automatic
Start-Service ssh-agent

#echo "Generating SSH Key"
#ssh-keygen -t rsa -b 4096 -C $UserEmail
#ssh-add

echo "Saving SSH Key"
md $HOME/.ssh
cp $PrivateKey $HOME/.ssh
cp $PublicKey $HOME/.ssh
ssh-add $HOME/.ssh/$KeyPairName

echo "Check Gits Connection"
ssh-keyscan -H gitlab.com >> $HOME/.ssh/known_hosts
ssh -T git@gitlab.com
ssh-keyscan -H github.com >> $HOME/.ssh/known_hosts
ssh -T git@github.com

echo "Setting KeyPairName into Environment Variable GIT_PAIRKEY"
[Environment]::SetEnvironmentVariable("GIT_PAIRKEY", $KeyPairName, "User")

Add-Content $HOME\.bash_profile 'eval $(ssh-agent -s)'
Add-Content $HOME\.bash_profile 'ssh-add $HOME/.ssh/$GIT_PAIRKEY'

# SIG # Begin signature block
# MIIFfwYJKoZIhvcNAQcCoIIFcDCCBWwCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUDTnGTccvpRS/xz5dGTafgds8
# EE+gggMUMIIDEDCCAfigAwIBAgIQEt8fR2Y16oVNsrl51ayDBTANBgkqhkiG9w0B
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
# hkiG9w0BCQQxFgQUS9qL4BkRRUHIsJ+iegrc7Z4xh2owDQYJKoZIhvcNAQEBBQAE
# ggEAVbM+/uJmJYktn/IS3XNTOcfhLdTnkQtdMWZT3QC0gWh2e2jzNOqAxmYHxZB7
# zPgcA75l3x8v4oCWALj9oeN0+fwifHTWDtFSzG6TiGtghRd3OE9smHIexLTTSEH7
# i7eqMdhTiCoZ99xO6Sn9ATPqYkhlDIqV240WzIdC/FZVL85HGBrypnTMFlSuD0L+
# 7qA0CzW2KrXuvRvhDt7YxjFqO2shQ/C9XplalxNhUs9QL+fpHRBwh5UX1kaIyQVs
# td+n1oxWHSsbIYcWT41p/ZswKQ0YHbBEQsZDX6BXyWRa+nYZILzUABAeFpT73YCo
# AQ4TIpYUXyHcYJaMnsobsFSr4Q==
# SIG # End signature block
