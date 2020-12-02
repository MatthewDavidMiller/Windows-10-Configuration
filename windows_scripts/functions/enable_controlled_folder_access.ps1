function EnableControlledFolderAccess {
    # Enable controlled folder access
    Set-MpPreference -EnableControlledFolderAccess Enabled

    function ControlledFolderAccessMenu {
        function Show-Menu {
            param (
                [string]$Title = 'Controlled Folder Access Options'
            )
            Clear-Host
            Write-Host "================ $Title ================"

            Write-Host "1: Press '1' to add an allowed application."
            Write-Host "2: Press '2' to add a protected folder."
            Write-Host "q: Press 'q' to quit."
        }
        do {
            Show-Menu
            $selection = Read-Host "Select an option"
            switch ($selection) {
                '1' {
                    AddAllowedApplication
                }
                '2' {
                    AddProtectedFolder
                }
            }
            Pause
        }
        until ($selection -eq 'q')
    }

    function AddAllowedApplication {
        $ApplicationLocation = Read-Host "Specify application full path. Can use a wildcard (*) to specify an entire folder."
        Add-MpPreference -ControlledFolderAccessAllowedApplications $ApplicationLocation
    }

    function AddProtectedFolder {
        $ProtectedFolderLocation = Read-Host "Specify protected folder full path."
        Add-MpPreference -ControlledFolderAccessProtectedFolders $ProtectedFolderLocation
    }

    # Call functions
    ControlledFolderAccessMenu
}
