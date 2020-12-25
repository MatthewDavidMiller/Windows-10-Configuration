function InstallApplicationsAdmin {

    function ApplicationsMenu {
        function Show-Menu {
            param (
                [string]$Title = 'Install Options 1'
            )
            Clear-Host
            Write-Host "================ $Title ================"

            Write-Host "1: Press '1' to Install Chocolatey."
            Write-Host "2: Press '2' to Install ShellCheck."
            Write-Host "3: Press '3' to Install Python."
            Write-Host "q: Press 'q' to quit."
        }
        do {
            Show-Menu
            $selection = Read-Host "Select an option"
            switch ($selection) {
                '1' {
                    InstallChocolatey
                }
                '2' {
                    InstallShellCheck
                }
                '2' {
                    InstallPython
                }
            }
            Pause
        }
        until ($selection -eq 'q')
    }

    function InstallChocolatey {
        Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
        # Reload PATH
        $env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")
    }

    function InstallShellCheck {
        choco 'install' 'shellcheck' '-y'
    }

    function InstallPython {
        Read-Host 'A web browser will be opened.  Download python into the downloads folder. Press enter to begin '
        Start-Process 'https://www.python.org/downloads/windows/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\python*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\python*.exe" -Wait
            # Reload PATH
            $env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")

            # Configure Python
            # Update pip
            python -m pip install -U pip
            # Install pylint
            pip install pylint
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function GetUserPath {
        $GetLoggedInUser = Get-WmiObject -Class Win32_ComputerSystem | Select-Object username
        $SplitLoggedInUser = $GetLoggedInUser.username
        $LoggedInUser = $SplitLoggedInUser.Split("\")
        $Username = $LoggedInUser[1]
        $global:UserPath = "C:\Users\$Username"
    }

    # To Update all installed choclatey packages use command:
    # choco upgrade all

    # Call functions
    GetUserPath
    ApplicationsMenu
}
