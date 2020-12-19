# Copyright (c) Matthew David Miller. All rights reserved.
# Licensed under the MIT License.
# Script to confgure settings in Windows 10

# Get neeeded files
Invoke-WebRequest 'https://raw.githubusercontent.com/MatthewDavidMiller/Windows-10-Configuration/stable/windows_scripts/functions/functions.ps1' -OutFile "$PSScriptRoot\functions\functions.ps1"
Invoke-WebRequest 'https://raw.githubusercontent.com/MatthewDavidMiller/Windows-10-Configuration/stable/windows_scripts/functions/configure_app_privacy.ps1' -OutFile "$PSScriptRoot\functions\configure_app_privacy.ps1"
Invoke-WebRequest 'https://raw.githubusercontent.com/MatthewDavidMiller/Windows-10-Configuration/stable/windows_scripts/functions/configure_firewall.ps1' -OutFile "$PSScriptRoot\functions\configure_firewall.ps1"
Invoke-WebRequest 'https://raw.githubusercontent.com/MatthewDavidMiller/Windows-10-Configuration/stable/windows_scripts/functions/configure_ntp.ps1' -OutFile "$PSScriptRoot\functions\configure_ntp.ps1"
Invoke-WebRequest 'https://raw.githubusercontent.com/MatthewDavidMiller/Windows-10-Configuration/stable/windows_scripts/functions/disable_cortana.ps1' -OutFile "$PSScriptRoot\functions\disable_cortana.ps1"
Invoke-WebRequest 'https://raw.githubusercontent.com/MatthewDavidMiller/Windows-10-Configuration/stable/windows_scripts/functions/disable_telemetry.ps1' -OutFile "$PSScriptRoot\functions\disable_telemetry.ps1"
Invoke-WebRequest 'https://raw.githubusercontent.com/MatthewDavidMiller/Windows-10-Configuration/stable/windows_scripts/functions/enable_controlled_folder_access.ps1' -OutFile "$PSScriptRoot\functions\enable_controlled_folder_access.ps1"
Invoke-WebRequest 'https://raw.githubusercontent.com/MatthewDavidMiller/Windows-10-Configuration/stable/windows_scripts/functions/install_applications.ps1' -OutFile "$PSScriptRoot\functions\install_applications.ps1"
Invoke-WebRequest 'https://raw.githubusercontent.com/MatthewDavidMiller/Windows-10-Configuration/stable/windows_scripts/functions/remove_default_apps.ps1' -OutFile "$PSScriptRoot\functions\remove_default_apps.ps1"
Invoke-WebRequest 'https://raw.githubusercontent.com/MatthewDavidMiller/Windows-10-Configuration/stable/windows_scripts/functions/env_example.ps1' -OutFile "$PSScriptRoot\functions\env_example.ps1"

# Source Functions
. "$PSScriptRoot\functions\env.ps1"
. "$PSScriptRoot\functions\functions.ps1"
. "$PSScriptRoot\functions\configure_app_privacy.ps1"
. "$PSScriptRoot\functions\configure_firewall.ps1"
. "$PSScriptRoot\functions\configure_ntp.ps1"
. "$PSScriptRoot\functions\disable_cortana.ps1"
. "$PSScriptRoot\functions\disable_telemetry.ps1"
. "$PSScriptRoot\functions\enable_controlled_folder_access.ps1"
. "$PSScriptRoot\functions\install_applications.ps1"
. "$PSScriptRoot\functions\remove_default_apps.ps1"

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
                InstallApplications
            }
            '15' {
                EnableControlledFolderAccess
            }
        }
        Pause
    }
    until ($selection -eq 'q')
}

# Call Functions
InteractiveMenu
