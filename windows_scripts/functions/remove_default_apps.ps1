function RemoveApplications {
    # Supress progress bar
    $ProgressPreference = 'SilentlyContinue'
    # Applications base name
    $AppBase = "Microsoft."
    # Applications to remove
    $AppBingWeather = "BingWeather"
    $AppStickyNotes = "MicrosoftStickyNotes"
    $AppZuneVideo = "ZuneVideo"
    $AppZuneMusic = "ZuneMusic"
    $AppMaps = "WindowsMaps"
    $AppFeedbackHub = "WindowsFeedbackHub"
    $AppCommunications = "windowscommunicationsapps"
    $AppCamera = "WindowsCamera"
    $AppAlarms = "WindowsAlarms"
    $AppSkype = "SkypeApp"
    $AppPrint3D = "Print3D"
    $AppPeople = "People"
    $AppOneConnect = "OneConnect"
    $AppOfficeSway = "Office.Sway"
    $AppNetworkSpeedTest = "NetworkSpeedTest"
    $AppSolitaire = "MicrosoftSolitaireCollection"
    $AppOfficeHub = "MicrosoftOfficeHub"
    $App3DViewer = "Microsoft3DViewer"
    $AppMessaging = "Messaging"
    $AppGetStarted = "Getstarted"
    $AppGetHelp = "GetHelp"
    $AppXboxOneSmartGlass = "XboxOneSmartGlass"
    $AppNews = "BingNews"
    $AppYourPhone = "YourPhone"
    $AppMixedReality = "MixedReality.Portal"
    $AppScreenSketch = "ScreenSketch"
    $AppOfficeOnenote = "Office.OneNote"
    $AppWallet = "Wallet"

    # Removes the applications
    Get-AppxPackage -Name "$($AppBase)$($AppBingWeather)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppStickyNotes)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppZuneVideo)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppZuneMusic)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppMaps)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppFeedbackHub)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppCommunications)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppCamera)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppAlarms)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppSkype)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppPrint3D)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppPeople)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppOneConnect)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppOfficeSway)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppNetworkSpeedTest)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppSolitaire)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppOfficeHub)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($App3DViewer)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppMessaging)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppGetStarted)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppGetHelp)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppXboxOneSmartGlass)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppNews)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppYourPhone)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppMixedReality)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppScreenSketch)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppOfficeOnenote)" | Remove-AppxPackage
    Get-AppxPackage -Name "$($AppBase)$($AppWallet)" | Remove-AppxPackage

    # Uninstall Onedrive
    if (Test-Path "$env:systemroot\System32\OneDriveSetup.exe") {
        Start-Process -FilePath "$env:systemroot\System32\OneDriveSetup.exe" /uninstall -Wait
    }
    if (Test-Path "$env:systemroot\SysWOW64\OneDriveSetup.exe") {
        Start-Process -FilePath "$env:systemroot\SysWOW64\OneDriveSetup.exe" /uninstall -Wait
    }
}
