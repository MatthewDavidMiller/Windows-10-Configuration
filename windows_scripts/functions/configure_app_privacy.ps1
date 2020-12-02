function ConfigureAppPrivacy {
    $AppPrivacy = "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy"
    $ForceAllowBackgroundApps = @"
Microsoft.WindowsStore_8wekyb3d8bbwe
windows.immersivecontrolpanel_cw5n1h2txyewy
"@

    function ConfigureAppPrivacyRegistry {

        # Value of 1 is force allow all by default. Value of 2 is force block all by default. Value of 3 is let user control it.

        # Prevent apps from accessing account info
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessAccountInfo -Value "2" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessAccountInfo_ForceAllowTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessAccountInfo_ForceDenyTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessAccountInfo_UserInControlOfTheseApps -PropertyType MultiString -Force | Out-Null
        # Prevent apps from accessing calendar
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessCalendar -Value "2" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessCalendar_ForceAllowTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessCalendar_ForceDenyTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessCalendar_UserInControlOfTheseApps -PropertyType MultiString -Force | Out-Null
        # Prevent apps from accessing call history
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessCallHistory -Value "2" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessCallHistory_ForceAllowTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessCallHistory_ForceDenyTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessCallHistory_UserInControlOfTheseApps -PropertyType MultiString -Force | Out-Null
        # Prevent apps from accessing camera
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessCamera -Value "2" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessCamera_ForceAllowTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessCamera_ForceDenyTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessCamera_UserInControlOfTheseApps -PropertyType MultiString -Force | Out-Null
        # Prevent apps from accessing contacts
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessContacts -Value "2" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessContacts_ForceAllowTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessContacts_ForceDenyTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessContacts_UserInControlOfTheseApps -PropertyType MultiString -Force | Out-Null
        # Prevent apps from accessing email
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessEmail -Value "2" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessEmail_ForceAllowTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessEmail_ForceDenyTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessEmail_UserInControlOfTheseApps -PropertyType MultiString -Force | Out-Null
        # Prevent apps from accessing gaze input
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessGazeInput -Value "2" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessGazeInput_ForceAllowTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessGazeInput_ForceDenyTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessGazeInput_UserInControlOfTheseApps -PropertyType MultiString -Force | Out-Null
        # Prevent apps from accessing location
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessLocation -Value "2" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessLocation_ForceAllowTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessLocation_ForceDenyTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessLocation_UserInControlOfTheseApps -PropertyType MultiString -Force | Out-Null
        # Prevent apps from accessing messaging
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessMessaging -Value "2" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessMessaging_ForceAllowTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessMessaging_ForceDenyTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessMessaging_UserInControlOfTheseApps -PropertyType MultiString -Force | Out-Null
        # Prevent apps from accessing microphone
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessMicrophone -Value "2" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessMicrophone_ForceAllowTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessMicrophone_ForceDenyTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessMicrophone_UserInControlOfTheseApps -PropertyType MultiString -Force | Out-Null
        # Prevent apps from accessing motion
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessMotion -Value "2" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessMotion_ForceAllowTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessMotion_ForceDenyTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessMotion_UserInControlOfTheseApps -PropertyType MultiString -Force | Out-Null
        # Prevent apps from accessing notifications
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessNotifications -Value "2" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessNotifications_ForceAllowTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessNotifications_ForceDenyTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessNotifications_UserInControlOfTheseApps -PropertyType MultiString -Force | Out-Null
        # Prevent apps from accessing phone
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessPhone -Value "2" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessPhone_ForceAllowTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessPhone_ForceDenyTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessPhone_UserInControlOfTheseApps -PropertyType MultiString -Force | Out-Null
        # Prevent apps from accessing radios
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessRadios -Value "2" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessRadios_ForceAllowTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessRadios_ForceDenyTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessRadios_UserInControlOfTheseApps -PropertyType MultiString -Force | Out-Null
        # Prevent apps from accessing tasks
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessTasks -Value "2" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessTasks_ForceAllowTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessTasks_ForceDenyTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessTasks_UserInControlOfTheseApps -PropertyType MultiString -Force | Out-Null
        # Prevent apps from accessing trusted devices
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessTrustedDevices -Value "2" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessTrustedDevices_ForceAllowTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessTrustedDevices_ForceDenyTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsAccessTrustedDevices_UserInControlOfTheseApps -PropertyType MultiString -Force | Out-Null
        # Prevent apps from activating with voice
        New-ItemProperty -Path $AppPrivacy -Name LetAppsActivateWithVoice -Value "2" -PropertyType DWORD -Force | Out-Null
        # Prevent apps from activating with voice while locked
        New-ItemProperty -Path $AppPrivacy -Name LetAppsActivateWithVoiceAboveLock -Value "2" -PropertyType DWORD -Force | Out-Null
        # Prevent apps from accessing diagnostic info
        New-ItemProperty -Path $AppPrivacy -Name LetAppsGetDiagnosticInfo -Value "2" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsGetDiagnosticInfo_ForceAllowTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsGetDiagnosticInfo_ForceDenyTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsGetDiagnosticInfo_UserInControlOfTheseApps -PropertyType MultiString -Force | Out-Null
        # Prevent apps from running in the background by default
        # Force allow some apps to run in the background
        New-ItemProperty -Path $AppPrivacy -Name LetAppsRunInBackground -Value "2" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsRunInBackground_ForceAllowTheseApps -Value "$ForceAllowBackgroundApps" -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsRunInBackground_ForceDenyTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsRunInBackground_UserInControlOfTheseApps -PropertyType MultiString -Force | Out-Null
        # Prevent apps from syncing across devices
        New-ItemProperty -Path $AppPrivacy -Name LetAppsSyncWithDevices -Value "2" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsSyncWithDevices_ForceAllowTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsSyncWithDevices_ForceDenyTheseApps -PropertyType MultiString -Force | Out-Null
        New-ItemProperty -Path $AppPrivacy -Name LetAppsSyncWithDevices_UserInControlOfTheseApps -PropertyType MultiString -Force | Out-Null
    }

    if (!(Test-Path $AppPrivacy)) {
        New-Item -Path $AppPrivacy -Force | Out-Null
        ConfigureAppPrivacyRegistry
    }
    else {
        ConfigureAppPrivacyRegistry
    }
}
