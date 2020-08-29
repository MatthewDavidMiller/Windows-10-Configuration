# Copyright (c) Matthew David Miller. All rights reserved.
# Licensed under the MIT License.
# Script to confgure settings in Windows 10

# Get neeeded files
Invoke-WebRequest 'https://raw.githubusercontent.com/MatthewDavidMiller/Windows-10-Configuration/stable/windows_scripts/windows_scripts.ps1' -OutFile "$PSScriptRoot\windows_scripts.ps1"

# Source Functions
. "$PSScriptRoot\windows_scripts.ps1"

function InteractiveMenu1 {
    function Show-Menu {
        param (
            [string]$Title = 'Configuration Options 1'
        )
        Clear-Host
        Write-Host "================ $Title ================"

        Write-Host "1: Press '1' to configure computer hostname."
        Write-Host "2: Press '2' to configure power options."
        Write-Host "3: Press '3' to disable Cortana."
        Write-Host "4: Press '4' to disable telemetry."
        Write-Host "5: Press '5' to configure firewall."
        Write-Host "6: Press '6' to remove some default applications."
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
        }
        Pause
    }
    until ($selection -eq 'q')
}

function InteractiveMenu2 {
    function Show-Menu {
        param (
            [string]$Title = 'Configuration Options 2'
        )
        Clear-Host
        Write-Host "================ $Title ================"

        Write-Host "1: Press '1' to configure app privacy settings."
        Write-Host "2: Press '2' to configure NTP."
        Write-Host "3: Press '3' to install features."
        Write-Host "4: Press '4' to remove some default features."
        Write-Host "5: Press '5' to install applications."
        Write-Host "q: Press 'q' to quit."
    }
    do {
        Show-Menu
        $selection = Read-Host "Select an option"
        switch ($selection) {
            '1' {
                ConfigureAppPrivacy
            }
            '2' {
                ConfigureNTP
            }
            '3' {
                InstallFeatures
            }
            '4' {
                RemoveFeatures
            }
            '5' {
                InstallApplications
            }
        }
        Pause
    }
    until ($selection -eq 'q')
}

# Call Functions
InteractiveMenu1
InteractiveMenu2
