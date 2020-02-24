# This script de-bloats unwanted apps from Windows 10.
# To keep certain apps insert a '#' at the beginning of the line 
# and it will be skipped. 

Write-Output "Uninstalling provisioned apps"
$ProvisionedApps = @(
    "Microsoft.BingWeather"
    #"Microsoft.DesktopAppInstaller"
    "Microsoft.GetHelp"
    "Microsoft.Getstarted"
    #"Microsoft.HEIFImageExtension"
    "Microsoft.Messaging"
    "Microsoft.Microsoft3DViewer"
    "Microsoft.MicrosoftOfficeHub"
    "Microsoft.MicrosoftSolitaireCollection"
    #"Microsoft.MicrosoftStickyNotes"
    "Microsoft.MixedReality.Portal"
    #"Microsoft.MSPaint"
    "Microsoft.Office.OneNote"
    "Microsoft.OneConnect"
    "Microsoft.People"
    "Microsoft.Print3D"
    "Microsoft.ScreenSketch"
    "Microsoft.SkypeApp"
    #"Microsoft.StorePurchaseApp"
    #"Microsoft.VP9VideoExtensions"
    "Microsoft.Wallet"
    #"Microsoft.WebMediaExtensions"
    #"Microsoft.WebpImageExtension"
    #"Microsoft.Windows.Photos"
    #"Microsoft.WindowsAlarms"
    #"Microsoft.WindowsCalculator"
    #"Microsoft.WindowsCamera"
    "Microsoft.windowscommunicationsapps"
    "Microsoft.WindowsFeedbackHub"
    "Microsoft.WindowsMaps"
    "Microsoft.WindowsSoundRecorder"
    #"Microsoft.WindowsStore"
    "Microsoft.Xbox.TCUI"
    "Microsoft.XboxApp"
    "Microsoft.XboxGameOverlay"
    "Microsoft.XboxGamingOverlay"
    "Microsoft.XboxIdentityProvider"
    "Microsoft.XboxSpeechToTextOverlay"
    "Microsoft.YourPhone"
    "Microsoft.ZuneMusic"
    "Microsoft.ZuneVideo"
)

foreach ($app in $ProvisionedApps) {
    Write-Output "REMOVING $app"

    Get-AppXProvisionedPackage -Online | Where-Object DisplayName -EQ $ProvisionedApps | Remove-AppxProvisionedPackage -Online -AllUsers
}

Write-Output "Uninstalling user apps"
$UserApps = @(
    #"Microsoft.AccountsControl"
    "Microsoft.Advertising.Xaml"
    #"Microsoft.AsyncTextService"
    "Microsoft.BingWeather"
    #"Microsoft.BioEnrollment"
    #"Microsoft.CredDialogHost"
    #"Microsoft.DesktopAppInstaller"
    #"Microsoft.ECApp"
    "Microsoft.GetHelp"
    "Microsoft.Getstarted"
    #"Microsoft.HEIFImageExtension"
    #"Microsoft.LockApp"
    "Microsoft.Messaging"
    "Microsoft.Microsoft3DViewer"
    "Microsoft.MicrosoftEdge"
    "Microsoft.MicrosoftEdgeDevToolsClient"
    "Microsoft.MicrosoftOfficeHub"
    "Microsoft.MicrosoftSolitaireCollection"
    "Microsoft.MicrosoftStickyNotes"
    "Microsoft.MixedReality.Portal"
    #"Microsoft.MSPaint"
    #"Microsoft.NET.Native.Framework.1.7"
    #"Microsoft.NET.Native.Framework.1.7"
    #"Microsoft.NET.Native.Framework.2.2"
    #"Microsoft.NET.Native.Runtime.1.7"
    #"Microsoft.NET.Native.Runtime.1.7"
    #"Microsoft.NET.Native.Runtime.2.2"
    "Microsoft.Office.OneNote"
    "Microsoft.OneConnect"
    "Microsoft.People"
    "Microsoft.PPIProjection"
    "Microsoft.Print3D"
    "Microsoft.ScreenSketch"
    #"Microsoft.Services.Store.Engagement"
    "Microsoft.SkypeApp"
    #"Microsoft.StorePurchaseApp"
    #"Microsoft.UI.Xaml.2.0"
    #"Microsoft.VCLibs.140.00"
    #"Microsoft.VCLibs.140.00"
    #"Microsoft.VCLibs.140.00.UWPDesktop"
    #"Microsoft.VP9VideoExtensions"
    "Microsoft.Wallet"
    #"Microsoft.WebMediaExtensions"
    #"Microsoft.WebpImageExtension"
    #"Microsoft.Win32WebViewHost"
    #"Microsoft.Windows.Apprep.ChxApp"
    #"Microsoft.Windows.CallingShellApp"
    #"Microsoft.Windows.CapturePicker"
    #"Microsoft.Windows.CloudExperienceHost"
    #"Microsoft.Windows.ContentDeliveryManager"
    "Microsoft.Windows.Cortana"
    "Microsoft.Windows.NarratorQuickStart"
    #"Microsoft.Windows.OOBENetworkCaptivePortal"
    #"Microsoft.Windows.OOBENetworkConnectionFlow"
    "Microsoft.Windows.ParentalControls"
    "Microsoft.Windows.PeopleExperienceHost"
    #"Microsoft.Windows.Photos"
    #"Microsoft.Windows.PinningConfirmationDialog"
    #"Microsoft.Windows.SecHealthUI"
    #"Microsoft.Windows.ShellExperienceHost"
    #"Microsoft.Windows.StartMenuExperienceHost"
    #"Microsoft.Windows.XGpuEjectDialog"
    #"Microsoft.WindowsAlarms"
    #"Microsoft.WindowsCalculator"
    #"Microsoft.WindowsCamera"
    "Microsoft.windowscommunicationsapps"
    "Microsoft.WindowsFeedbackHub"
    "Microsoft.WindowsMaps"
    "Microsoft.WindowsSoundRecorder"
    #"Microsoft.WindowsStore"
    "Microsoft.Xbox.TCUI"
    "Microsoft.XboxApp"
    "Microsoft.XboxGameCallableUI"
    "Microsoft.XboxGameOverlay"
    "Microsoft.XboxGamingOverlay"
    "Microsoft.XboxIdentityProvider"
    "Microsoft.XboxSpeechToTextOverlay"
    "Microsoft.YourPhone"
    "Microsoft.ZuneMusic"
    "Microsoft.ZuneVideo"
    #"Windows.CBSPreview"
    #"windows.immersivecontrolpanel"
    #"Windows.PrintDialog"
)

foreach ($app in $UserApps) {
    Write-Output "REMOVING $app"

    Get-AppxPackage -Name $app -AllUsers | Remove-AppxPackage -AllUsers
}

# SIG # Begin signature block
# MIIFfwYJKoZIhvcNAQcCoIIFcDCCBWwCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQU3VCGiPPqNiPxiUHdBcI39mYY
# bJWgggMUMIIDEDCCAfigAwIBAgIQEt8fR2Y16oVNsrl51ayDBTANBgkqhkiG9w0B
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
# hkiG9w0BCQQxFgQUqzYZln+opk6XOEce7KGh9s+om5IwDQYJKoZIhvcNAQEBBQAE
# ggEAImV13hUNnD0tA2UN8MRzadl/l+70/dBHR4xJFL80j7DIY+7zpL3UWUmvFvlw
# B37/Nw+Te9fI7OuQXdrzpFnVvW+/IkMTzZb2HXaO28vyO+D9oEv46WZnPJQhSv11
# NL0dEqsnCIN/hao6/mPCImoGBadsWojTHEX3RxV5/YtfE7ZcTNi0CZ5yCSb5KWKa
# lwuXsr6WBrAIdHkgRocRUBOyzig0gt25qf/5byJ+u3hrsSqf0E+2FedVQbQ/CcNw
# xhWH1VmoAoxQG0pxA5Og1SZxKPHXOxJTHOVK4/YzsMJitx/iT2RXeJU+j4R0uFy2
# KXXaNUB/d8NHuML8i+cydRU06g==
# SIG # End signature block
