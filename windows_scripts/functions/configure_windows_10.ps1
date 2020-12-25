# Copyright (c) Matthew David Miller. All rights reserved.
# Licensed under the MIT License.
# Script to confgure settings in Windows 10

function InteractiveMenu {
    function Show-Menu {
        param (
            [string]$Title = 'Configuration Options'
        )
        Clear-Host
        Write-Host "================ $Title ================"

        Write-Host "1: Press '1' to map network drives."
        Write-Host "14: Press '2' to install applications."
        Write-Host "q: Press 'q' to quit."
    }
    do {
        Show-Menu
        $selection = Read-Host "Select an option"
        switch ($selection) {
            '1' {
                MapDrives
            }
            '2' {
                InstallApplications
            }
        }
        Pause
    }
    until ($selection -eq 'q')
}

# Call functions
InteractiveMenu
