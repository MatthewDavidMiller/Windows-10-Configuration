# Copyright (c) Matthew David Miller. All rights reserved.
# Licensed under the MIT License.
# Script to confgure settings in Windows 10

# Get neeeded files
Invoke-WebRequest 'https://raw.githubusercontent.com/MatthewDavidMiller/Windows-10-Configuration/stable/windows_scripts/functions/functions.ps1' -OutFile "$PSScriptRoot\functions\functions.ps1"

# Source Functions
. "$PSScriptRoot\functions\functions.ps1"

function InteractiveMenu1 {
    function Show-Menu {
        param (
            [string]$Title = 'Configuration Options 1'
        )
        Clear-Host
        Write-Host "================ $Title ================"

        Write-Host "1: Press '1' to map network drives."
        Write-Host "q: Press 'q' to quit."
    }
    do {
        Show-Menu
        $selection = Read-Host "Select an option"
        switch ($selection) {
            '1' {
                MapDrives
            }
        }
        Pause
    }
    until ($selection -eq 'q')
}

# Call functions
InteractiveMenu1
