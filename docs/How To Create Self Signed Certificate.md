# How To Create Self Signed Certificate

Improved from the [Tutorial Link](https://sid-500.com/2017/10/26/how-to-digitally-sign-powershell-scripts/)

## How to Create a Personal Certificate

Run Inside PowerShell

```
$Params = @{    
Subject           = "CN=saulo@paralink.com.br"
Type              = "CodeSigningCert"    
KeySpec           = "Signature"     
KeyUsage          = "DigitalSignature" 
FriendlyName      = "Digital Signature For Win10 Config Starter Repo"
NotAfter          = [datetime]::now.AddYears(5)    
CertStoreLocation = 'Cert:\CurrentUser\My' }

$TestCodeSigningCert = New-SelfSignedCertificate @Params

Export-Certificate -FilePath exported_cert.cer -Cert $TestCodeSigningCert
Import-Certificate -FilePath exported_cert.cer -CertStoreLocation Cert:\CurrentUser\Root
Import-Certificate -FilePath exported_cert.cer -CertStoreLocation Cert:\LocalMachine\TrustedPublisher\
```

## How to Show Certificates

```
dir cert: -rec -code
```

## Certificates Manager

```
certmgr.msc
```

## Export To ReSign Files in Another Computer

- Inside your Personal/Certificates
  - Export With Private Key
    - Check Export All Private Properties
- password: saulo

## Export To Validate Files

- Inside your Personal/Certificates
  - Export To a File Without the key

### Validate Files

- Import Into
  - Trusted Root Certification Authorities
  - Trusted Publishers

## How to Apply Certificate to One File
 
```
Set-AuthenticodeSignature -FilePath C:\Temp\test.ps1 -Certificate (Get-ChildItem -Path Cert:\CurrentUser\My\ -CodeSigningCert)
```

## How to Apply Certificate to All Files
 
```
Set-AuthenticodeSignature -FilePath *.ps1 -Certificate (Get-ChildItem -Path Cert:\CurrentUser\My\ -CodeSigningCert)
```
 
## Import Certificate to Validate Files Signed

```
Import-Certificate -FilePath .\cfg\keys\certificates\SauloSelfSignedPs1Cert.cer  -CertStoreLocation Cert:\CurrentUser\Root
Import-Certificate -FilePath .\cfg\keys\certificates\SauloSelfSignedPs1Cert.cer  -CertStoreLocation Cert:\LocalMachine\TrustedPublisher\
```
## Import Certificate To Sign Files

```
Import-PfxCertificate -FilePath .\cfg\keys\certificates\SauloSelfSignerPs1Cert.pfx  -CertStoreLocation Cert:\CurrentUser\My\ -Password (ConvertTo-SecureString -String 'saulo' -AsPlainText -Force)
Import-PfxCertificate -FilePath .\cfg\keys\certificates\SauloSelfSignerPs1Cert.pfx  -CertStoreLocation Cert:\CurrentUser\Root\ -Password (ConvertTo-SecureString -String 'saulo' -AsPlainText -Force)
Import-PfxCertificate -FilePath .\cfg\keys\certificates\SauloSelfSignerPs1Cert.pfx  -CertStoreLocation Cert:\LocalMachine\TrustedPublisher\ -Password (ConvertTo-SecureString -String 'saulo' -AsPlainText -Force)
```
