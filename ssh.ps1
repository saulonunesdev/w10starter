$idrsa = $env:OneDrive + "\keys\git\id_rsa"
$idrsapub = $env:OneDrive + "\keys\git\id_rsa.pub"
if ((Test-Path -path $idrsa) -and (Test-Path -path $idrsapub))
{ 
  #Windows SSH Key Must Be id_rsa or will fail with permission denied
  echo "Saving SSH Key"
  md $HOME/.ssh
  cp $idrsa $HOME\.ssh\id_rsa
  cp $idrsapub $HOME\.ssh\id_rsa.pub
  
  echo "Add SSH Key"
  ssh-add
  
  echo "Add GitHub Connection"
  ssh -o StrictHostKeyChecking=no git@github.com
  ssh-keyscan -H github.com >> $HOME/.ssh/known_hosts
  ssh -T git@github.com
  
  echo "Add GitLab Connection"
  ssh -o StrictHostKeyChecking=no git@gitlab.com
  ssh-keyscan -H gitlab.com >> $HOME/.ssh/known_hosts
  ssh -T git@gitlab.com
  
  echo "Setting Git Bash SSH"
  Add-Content $HOME\.bash_profile 'eval $(ssh-agent -s)'
  Add-Content $HOME\.bash_profile 'ssh-add'
}
else
{
  echo "No SSH Key Found in: "
  echo $idrsa
  echo $idrsapub
}

# SIG # Begin signature block
# MIIFfwYJKoZIhvcNAQcCoIIFcDCCBWwCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUC69zQVk1Syr0gNthWI/usT0N
# ZQKgggMUMIIDEDCCAfigAwIBAgIQEt8fR2Y16oVNsrl51ayDBTANBgkqhkiG9w0B
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
# hkiG9w0BCQQxFgQUerbMCONWqF7rtr9Jr4xoiaYQH7gwDQYJKoZIhvcNAQEBBQAE
# ggEATm4sEE7gVxtYksbB8cyWQG+D6hOkso5D2iENtRrx840Z6GczIMzsvVe9CTy7
# rPvGnYYitxABDwNEIb8y1aUxXQ54NPZ/uql/coDid98nBbYNbqyrpngUAoO0auAH
# +Lz7UpsxeH4WO57YWD+myWCF2r3cfkM4+ACWO6kXKWj/FI0W8kkmdHJ7j9w1xJni
# 5LEatDYZ+mximFwRGX24w7TVr1smti55CoIwG5gdB3hFZmKoWlA2zj6xnU/tReBE
# +MTL6sNlSt61+xSMFyxFX3Nvw6fvvxChhUbbdlkBobQu+ZyqC+khInpAmY//odlz
# P4agv5Bhc4RpXXHFIjQGL15jJQ==
# SIG # End signature block
