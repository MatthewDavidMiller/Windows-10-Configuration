function InteractiveMenu {
    function Show-Menu {
        param (
            [string]$Title = 'Configuration Options'
        )
        Clear-Host
        Write-Host "================ $Title ================"

        Write-Host "1: Press '1' to run scripts that require admin."
        Write-Host "14: Press '2' to run scripts that should not be run as admin."
        Write-Host "q: Press 'q' to quit."
    }
    do {
        Show-Menu
        $selection = Read-Host "Select an option"
        switch ($selection) {
            '1' {
                . "$PSScriptRoot\functions\configure_windows_10.ps1"
            }
            '2' {
                . "$PSScriptRoot\functions\configure_windows_10_admin.ps1"
            }
        }
        Pause
    }
    until ($selection -eq 'q')
}

# Call functions
InteractiveMenu
