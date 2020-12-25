# Copyright (c) Matthew David Miller. All rights reserved.
# Licensed under the MIT License.
# Script to confgure settings in Windows 10
# Credits to Ed O'Connor, https://powershell.org/forums/topic/envuserprofile-as-administrator-shell/
# Credits to Martin Brandl, https://stackoverflow.com/questions/50366229/powershell-test-path-output-eq-false-not-working

function InteractiveMenu {
    function Show-Menu {
        param (
            [string]$Title = 'Configuration Options'
        )
        Clear-Host
        Write-Host "================ $Title ================"

        Write-Host "1: Press '1' to configure computer hostname."
        Write-Host "2: Press '2' to configure power options."
        Write-Host "3: Press '3' to disable Cortana."
        Write-Host "4: Press '4' to disable telemetry."
        Write-Host "5: Press '5' to configure firewall."
        Write-Host "6: Press '6' to remove some default applications."
        Write-Host "7: Press '7' to disable LLMNR."
        Write-Host "8: Press '8' to disable Netbios."
        Write-Host "9: Press '9' to disable SMB version 1."
        Write-Host "10: Press '10' to configure app privacy settings."
        Write-Host "11: Press '11' to configure NTP."
        Write-Host "12: Press '12' to install features."
        Write-Host "13: Press '13' to remove some default features."
        Write-Host "14: Press '14' to install applications."
        Write-Host "15: Press '15' to enable controlled folder access."
        Write-Host "16: Press '16' to create an user."
        Write-Host "17: Press '17' to add an user to local admin group."
        Write-Host "q: Press 'q' to quit."
    }
    do {
        Show-Menu
        $selection = Read-Host "Select an option"
        switch ($selection) {
            '1' {
                ConfigureComputerName
            }
            '2' {
                ConfigurePowerOptions
            }
            '3' {
                DisableCortana
            }
            '4' {
                DisableTelemetry
            }
            '5' {
                ConfigureFirewallBase
                ConfigureFirewallCoreNetworking
                ConfigureFirewallNetworkDiscovery
            }
            '6' {
                RemoveApplications
            }
            '7' {
                DisableLLMNR
            }
            '8' {
                DisableNetbios
            }
            '9' {
                DisableSMBV1
            }
            '10' {
                ConfigureAppPrivacy
            }
            '11' {
                ConfigureNTP
            }
            '12' {
                InstallFeatures
            }
            '13' {
                RemoveFeatures
            }
            '14' {
                InstallApplicationsAdmin
            }
            '15' {
                EnableControlledFolderAccess
            }
            '16' {
                CreateUser
            }
            '17' {
                AddUserToLocalAdmin
            }
        }
        Pause
    }
    until ($selection -eq 'q')
}

# Call Functions
InteractiveMenu
