function InstallApplications {

    function ApplicationsMenu1 {
        function Show-Menu {
            param (
                [string]$Title = 'Install Options 1'
            )
            Clear-Host
            Write-Host "================ $Title ================"

            Write-Host "1: Press '1' to Install Chocolatey."
            Write-Host "2: Press '2' to Install ShellCheck."
            Write-Host "3: Press '3' to Install Notepad++."
            Write-Host "4: Press '4' to Install 7Zip."
            Write-Host "5: Press '5' to Install Nmap."
            Write-Host "6: Press '6' to Install QBittorent."
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
                '3' {
                    InstallNotepadPlusPlus
                }
                '4' {
                    Install7Zip
                }
                '5' {
                    InstallNMap
                }
                '6' {
                    InstallQBittorent
                }
            }
            Pause
        }
        until ($selection -eq 'q')
    }

    function ApplicationsMenu2 {
        function Show-Menu {
            param (
                [string]$Title = 'Install Options 2'
            )
            Clear-Host
            Write-Host "================ $Title ================"

            Write-Host "1: Press '1' to Install Rufus."
            Write-Host "2: Press '2' to Install Etcher."
            Write-Host "3: Press '3' to Install Gimp."
            Write-Host "4: Press '4' to Install Git."
            Write-Host "5: Press '5' to Install Vlc."
            Write-Host "6: Press '6' to Install Blender."
            Write-Host "q: Press 'q' to quit."
        }
        do {
            Show-Menu
            $selection = Read-Host "Select an option"
            switch ($selection) {
                '1' {
                    InstallRufus
                }
                '2' {
                    InstallEtcher
                }
                '3' {
                    InstallGimp
                }
                '4' {
                    InstallGit
                }
                '5' {
                    InstallVlc
                }
                '6' {
                    InstallBlender
                }
            }
            Pause
        }
        until ($selection -eq 'q')
    }

    function ApplicationsMenu3 {
        function Show-Menu {
            param (
                [string]$Title = 'Install Options 3'
            )
            Clear-Host
            Write-Host "================ $Title ================"

            Write-Host "1: Press '1' to Install Bitwarden."
            Write-Host "2: Press '2' to Install WinSCP."
            Write-Host "3: Press '3' to Install Putty."
            Write-Host "4: Press '4' to Install Python."
            Write-Host "5: Press '5' to Install Libreoffice."
            Write-Host "6: Press '6' to Install Java."
            Write-Host "q: Press 'q' to quit."
        }
        do {
            Show-Menu
            $selection = Read-Host "Select an option"
            switch ($selection) {
                '1' {
                    InstallBitwarden
                }
                '2' {
                    InstallWinSCP
                }
                '3' {
                    InstallPutty
                }
                '4' {
                    InstallPython
                }
                '5' {
                    InstallLibreoffice
                }
                '6' {
                    InstallJava
                }
            }
            Pause
        }
        until ($selection -eq 'q')
    }

    function ApplicationsMenu4 {
        function Show-Menu {
            param (
                [string]$Title = 'Install Options 4'
            )
            Clear-Host
            Write-Host "================ $Title ================"

            Write-Host "1: Press '1' to Install Sysinternals."
            Write-Host "2: Press '2' to Install VSCode."
            Write-Host "3: Press '3' to Install Wireshark."
            Write-Host "4: Press '4' to Install OpenJDK."
            Write-Host "5: Press '5' to Install Tiny Nvidia Updater."
            Write-Host "6: Press '6' to Install Firefox."
            Write-Host "q: Press 'q' to quit."
        }
        do {
            Show-Menu
            $selection = Read-Host "Select an option"
            switch ($selection) {
                '1' {
                    InstallSysinternals
                }
                '2' {
                    InstallVSCode
                }
                '3' {
                    InstallWireshark
                }
                '4' {
                    InstallOpenJDK
                }
                '5' {
                    InstallTinyNvidiaUpdater
                }
                '6' {
                    InstallFirefox
                }
            }
            Pause
        }
        until ($selection -eq 'q')
    }

    function ApplicationsMenu5 {
        function Show-Menu {
            param (
                [string]$Title = 'Install Options 5'
            )
            Clear-Host
            Write-Host "================ $Title ================"

            Write-Host "1: Press '1' to Install Chrome."
            Write-Host "2: Press '2' to Install Edge."
            Write-Host "3: Press '3' to Install Freefilesync."
            Write-Host "4: Press '4' to Install Vmware Player."
            Write-Host "5: Press '5' to Install Nvidia Profile Inspector."
            Write-Host "6: Press '6' to Install Steam."
            Write-Host "q: Press 'q' to quit."
        }
        do {
            Show-Menu
            $selection = Read-Host "Select an option"
            switch ($selection) {
                '1' {
                    InstallChrome
                }
                '2' {
                    InstallEdge
                }
                '3' {
                    InstallFreeFileSync
                }
                '4' {
                    InstallVmwarePlayer
                }
                '5' {
                    InstallNvidiaProfileInspector
                }
                '6' {
                    InstallSteam
                }
            }
            Pause
        }
        until ($selection -eq 'q')
    }

    function ApplicationsMenu6 {
        function Show-Menu {
            param (
                [string]$Title = 'Install Options 6'
            )
            Clear-Host
            Write-Host "================ $Title ================"

            Write-Host "1: Press '1' to Install Origin."
            Write-Host "2: Press '2' to Install GOG."
            Write-Host "3: Press '3' to Install Epic Store."
            Write-Host "4: Press '4' to Install Bethesda Launcher."
            Write-Host "5: Press '5' to Install Borderless Gaming."
            Write-Host "6: Press '6' to Install Discord."
            Write-Host "q: Press 'q' to quit."
        }
        do {
            Show-Menu
            $selection = Read-Host "Select an option"
            switch ($selection) {
                '1' {
                    InstallOrigin
                }
                '2' {
                    InstallGOG
                }
                '3' {
                    InstallEpicStore
                }
                '4' {
                    InstallBethesdaLauncher
                }
                '5' {
                    InstallBorderlessGaming
                }
                '6' {
                    InstallDiscord
                }
            }
            Pause
        }
        until ($selection -eq 'q')
    }

    function ApplicationsMenu7 {
        function Show-Menu {
            param (
                [string]$Title = 'Install Options 7'
            )
            Clear-Host
            Write-Host "================ $Title ================"

            Write-Host "1: Press '1' to Install Fedora Media Writer."
            Write-Host "2: Press '2' to Install Visual Studio Community."
            Write-Host "3: Press '3' to Install OpenVPN."
            Write-Host "4: Press '4' to Install Twitch."
            Write-Host "5: Press '5' to Install Vortex."
            Write-Host "6: Press '6' to Install Visual Redistributables."
            Write-Host "q: Press 'q' to quit."
        }
        do {
            Show-Menu
            $selection = Read-Host "Select an option"
            switch ($selection) {
                '1' {
                    InstallFedoraMediaWriter
                }
                '2' {
                    InstallVisualStudioCommunity
                }
                '3' {
                    InstallOpenVPN
                }
                '4' {
                    InstallTwitch
                }
                '5' {
                    InstallVortex
                }
                '6' {
                    InstallVisualRedistributables
                }
            }
            Pause
        }
        until ($selection -eq 'q')
    }

    function ApplicationsMenu8 {
        function Show-Menu {
            param (
                [string]$Title = 'Install Options 8'
            )
            Clear-Host
            Write-Host "================ $Title ================"

            Write-Host "1: Press '1' to Install Rockstar Launcher."
            Write-Host "2: Press '2' to Install Rpgmaker RTP."
            Write-Host "3: Press '3' to Install Golang."
            Write-Host "4: Press '4' to Install Reolink."
            Write-Host "5: Press '5' to Install Uplay."
            Write-Host "6: Press '6' to Install Microsoft Office."
            Write-Host "q: Press 'q' to quit."
        }
        do {
            Show-Menu
            $selection = Read-Host "Select an option"
            switch ($selection) {
                '1' {
                    InstallRockstarLauncher
                }
                '2' {
                    InstallRPGMakerRTPs
                }
                '3' {
                    InstallGolang
                }
                '4' {
                    InstallReolink
                }
                '5' {
                    InstallUplay
                }
                '6' {
                    InstallMicrosoftOffice
                }
            }
            Pause
        }
        until ($selection -eq 'q')
    }

    function ApplicationsMenu9 {
        function Show-Menu {
            param (
                [string]$Title = 'Install Options 9'
            )
            Clear-Host
            Write-Host "================ $Title ================"

            Write-Host "1: Press '1' to Install Locale Emulator."
            Write-Host "2: Press '2' to Install Wireguard."
            Write-Host "3: Press '3' to Install Windows Store Apps."
            Write-Host "4: Press '4' to Install Zoom Meetings."
            Write-Host "q: Press 'q' to quit."
        }
        do {
            Show-Menu
            $selection = Read-Host "Select an option"
            switch ($selection) {
                '1' {
                    InstallLocaleEmulator
                }
                '2' {
                    InstallWireguard
                }
                '3' {
                    InstallWindowsStoreApps
                }
                '4' {
                    InstallZoom
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

    function InstallNotepadPlusPlus {
        Read-Host 'A web browser will be opened.  Download notepad++ into the downloads folder. Press enter to begin '
        Start-Process 'https://notepad-plus-plus.org/downloads/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\npp*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\npp*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function Install7Zip {
        Read-Host 'A web browser will be opened.  Download 7zip 32 bit and 64 bit into the downloads folder. Press enter to begin '
        Start-Process 'https://www.7-zip.org/download.html'
        Read-Host 'Press enter when downloads are complete '
        New-Item -ItemType Directory -Force -Path "$HOME\Downloads\7zip_64_bit"
        Move-Item -Path "$HOME\Downloads\7z*x64.exe" -Destination "$HOME\Downloads\7zip_64_bit\7zip_x64.exe"
        Start-Process -FilePath "$HOME\Downloads\7z*.exe" -Wait
        Start-Process -FilePath "$HOME\Downloads\7zip_64_bit\7z*x64.exe" -Wait
    }

    function InstallNMap {
        Read-Host 'A web browser will be opened.  Download nmap into the downloads folder. Press enter to begin '
        Start-Process 'https://nmap.org/download.html'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\nmap*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\nmap*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallQBittorent {
        Read-Host 'A web browser will be opened.  Download qbittorrent into the downloads folder. Press enter to begin '
        Start-Process 'https://www.qbittorrent.org/download.php'
        Read-Host 'Press enter when downloads are complete '
        Start-Process -FilePath "$HOME\Downloads\qbittorrent*.exe" -Wait
    }

    function InstallRufus {
        Read-Host 'A web browser will be opened.  Download rufus into the downloads folder. Press enter to begin '
        Start-Process 'https://rufus.ie/'
        Read-Host 'Press enter when downloads are complete '
        Get-ChildItem "$HOME\Downloads\rufus*.exe" | Rename-Item -NewName 'rufus.exe'
        New-Item -ItemType Directory -Force -Path 'C:\Program Files\Rufus'
        Move-Item -Path "$HOME\Downloads\rufus.exe" -Destination 'C:\Program Files\Rufus\rufus.exe'
        # Create shortcut
        $WScriptShell = New-Object -ComObject WScript.Shell
        $Shortcut = $WScriptShell.CreateShortcut('C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Rufus.lnk')
        $Shortcut.WorkingDirectory = 'C:\Program Files\Rufus'
        $Shortcut.TargetPath = 'C:\Program Files\Rufus\rufus.exe'
        $Shortcut.Save()
    }

    function InstallEtcher {
        Read-Host 'A web browser will be opened.  Download etcher into the downloads folder. Press enter to begin '
        Start-Process 'https://www.balena.io/etcher/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\balenaetcher*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\balenaetcher*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallGimp {
        Read-Host 'A web browser will be opened.  Download gimp into the downloads folder. Press enter to begin '
        Start-Process 'https://www.gimp.org/downloads/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\gimp*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\gimp*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallGit {
        Read-Host 'A web browser will be opened.  Download git into the downloads folder. Press enter to begin '
        Start-Process 'https://git-scm.com/downloads'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\git*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\git*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
        # Add ssh key
        Copy-Item 'N:\SSHConfigs\github\github_ssh' -Destination "$HOME\.ssh\id_rsa"
    }

    function InstallVlc {
        Read-Host 'A web browser will be opened.  Download vlc into the downloads folder. Press enter to begin '
        Start-Process 'https://www.videolan.org/vlc/download-windows.html'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\vlc*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\vlc*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallBlender {
        Read-Host 'A web browser will be opened.  Download blender into the downloads folder. Press enter to begin '
        Start-Process 'https://www.blender.org/download/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\blender*.msi" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\blender*.msi" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallBitwarden {
        Invoke-WebRequest 'https://vault.bitwarden.com/download/?app=desktop&platform=windows' -OutFile "$HOME\Downloads\bitwarden_installer.exe"
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\bitwarden_installer.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\bitwarden_installer.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallWinSCP {
        Read-Host 'A web browser will be opened.  Download winscp into the downloads folder. Press enter to begin '
        Start-Process 'https://winscp.net/eng/download.php'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\winscp*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\winscp*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallPutty {
        Read-Host 'A web browser will be opened.  Download putty into the downloads folder. Press enter to begin '
        Start-Process 'https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\putty*.msi" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\putty*.msi" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallPython {
        Read-Host 'A web browser will be opened.  Download python into the downloads folder. Press enter to begin '
        Start-Process 'https://www.python.org/downloads/windows/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\python*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\python*.exe" -Wait
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

    function InstallLibreoffice {
        Read-Host 'A web browser will be opened.  Download libreoffice fresh into the downloads folder. Press enter to begin '
        Start-Process 'https://www.libreoffice.org/download/download/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\libreoffice*.msi" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\libreoffice*.msi" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallJava {
        Read-Host 'A web browser will be opened.  Download java 64 bit into the downloads folder. Press enter to begin '
        Start-Process 'https://www.java.com/en/download/manual.jsp'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\jre*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\jre*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallSysinternals {
        Invoke-WebRequest 'https://download.sysinternals.com/files/SysinternalsSuite.zip' -OutFile "$HOME\Downloads\SysinternalsSuite.zip"
        # Extract zip folder
        Expand-Archive -LiteralPath "$HOME\Downloads\SysinternalsSuite.zip" -DestinationPath 'C:\Program Files\SysinternalsSuite'
        # Create shortcut
        $WScriptShell = New-Object -ComObject WScript.Shell
        $Shortcut = $WScriptShell.CreateShortcut('C:\ProgramData\Microsoft\Windows\Start Menu\Programs\SysinternalsSuite.lnk')
        $Shortcut.WorkingDirectory = 'C:\Program Files\SysinternalsSuite'
        $Shortcut.TargetPath = 'C:\Program Files\SysinternalsSuite'
        $Shortcut.Save()
    }

    function InstallVSCode {
        Invoke-WebRequest 'https://aka.ms/win32-x64-user-stable' -OutFile "$HOME\Downloads\vscode_installer.exe"
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\vscode_installer.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\vscode_installer.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallWireshark {
        Read-Host 'A web browser will be opened.  Download wireshark into the downloads folder. Press enter to begin '
        Start-Process 'https://www.wireshark.org/#download'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\wireshark*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\wireshark*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallOpenJDK {
        Read-Host 'A web browser will be opened.  Download openjdk into the downloads folder. Press enter to begin '
        Start-Process 'https://adoptopenjdk.net/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\openjdk*.msi" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\openjdk*.msi" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallTinyNvidiaUpdater {
        Read-Host 'A web browser will be opened.  Download tinynvidiaupdater and the dll file into the downloads folder. Press enter to begin '
        Start-Process 'https://github.com/ElPumpo/TinyNvidiaUpdateChecker/releases'
        Read-Host 'Press enter when downloads are complete '
        Get-ChildItem "$HOME\Downloads\TinyNvidiaUpdateChecker*.exe" | Rename-Item -NewName 'TinyNvidiaUpdateChecker.exe'
        New-Item -ItemType Directory -Force -Path 'C:\Program Files\TinyNvidiaUpdateChecker'
        Move-Item -Path "$HOME\Downloads\TinyNvidiaUpdateChecker.exe" -Destination 'C:\Program Files\TinyNvidiaUpdateChecker\TinyNvidiaUpdateChecker.exe'
        Move-Item -Path "$HOME\Downloads\HtmlAgilityPack.dll" -Destination 'C:\Program Files\TinyNvidiaUpdateChecker\HtmlAgilityPack.dll'
        # Create shortcut
        $WScriptShell = New-Object -ComObject WScript.Shell
        $Shortcut = $WScriptShell.CreateShortcut('C:\ProgramData\Microsoft\Windows\Start Menu\Programs\TinyNvidiaUpdateChecker.lnk')
        $Shortcut.WorkingDirectory = 'C:\Program Files\TinyNvidiaUpdateChecker'
        $Shortcut.TargetPath = 'C:\Program Files\TinyNvidiaUpdateChecker\TinyNvidiaUpdateChecker.exe'
        $Shortcut.Save()
    }

    function InstallFirefox {
        Invoke-WebRequest 'https://download.mozilla.org/?product=firefox-msi-latest-ssl&os=win64&lang=en-US' -OutFile "$HOME\Downloads\firefox.msi"
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\firefox.msi" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\firefox.msi" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallChrome {
        Invoke-WebRequest 'https://dl.google.com/chrome/install/latest/chrome_installer.exe' -OutFile "$HOME\Downloads\chrome_installer.exe"
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\chrome_installer.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\chrome_installer.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallFreeFileSync {
        Read-Host 'A web browser will be opened.  Download freefilesync into the downloads folder. Press enter to begin '
        Start-Process 'https://freefilesync.org/download.php'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\FreeFileSync*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\FreeFileSync*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallVmwarePlayer {
        Invoke-WebRequest 'https://www.vmware.com/go/getplayer-win' -OutFile "$HOME\Downloads\vmware_player_setup.exe"
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\vmware_player_setup.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\vmware_player_setup.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallNvidiaProfileInspector {
        Read-Host 'A web browser will be opened.  Download nvidiaprofileinspector into the downloads folder. Press enter to begin '
        Start-Process 'https://github.com/Orbmu2k/nvidiaProfileInspector/releases'
        Read-Host 'Press enter when downloads are complete '
        # Extract zip folder
        Expand-Archive -LiteralPath "$HOME\Downloads\nvidiaProfileInspector.zip" -DestinationPath 'C:\Program Files\NvidiaProfileInspector'
        # Create shortcut
        $WScriptShell = New-Object -ComObject WScript.Shell
        $Shortcut = $WScriptShell.CreateShortcut('C:\ProgramData\Microsoft\Windows\Start Menu\Programs\NvidiaProfileInspector.lnk')
        $Shortcut.WorkingDirectory = 'C:\Program Files\NvidiaProfileInspector'
        $Shortcut.TargetPath = 'C:\Program Files\NvidiaProfileInspector\nvidiaProfileInspector.exe'
        $Shortcut.Save()
    }

    function InstallSteam {
        Invoke-WebRequest 'https://steamcdn-a.akamaihd.net/client/installer/SteamSetup.exe' -OutFile "$HOME\Downloads\steam_setup.exe"
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\steam_setup.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\steam_setup.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallOrigin {
        Invoke-WebRequest 'https://www.dm.origin.com/download' -OutFile "$HOME\Downloads\origin_setup.exe"
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\origin_setup.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\origin_setup.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallGOG {
        Read-Host 'A web browser will be opened.  Download gog into the downloads folder. Press enter to begin '
        Start-Process 'https://www.gog.com/galaxy'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\gog_galaxy*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\gog_galaxy*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallEpicStore {
        Read-Host 'A web browser will be opened.  Download epic launcher into the downloads folder. Press enter to begin '
        Start-Process 'https://www.epicgames.com/store/en-US/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\EpicInstaller*.msi" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\EpicInstaller*.msi" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallBethesdaLauncher {
        Invoke-WebRequest 'https://download.cdp.bethesda.net/BethesdaNetLauncher_Setup.exe' -OutFile "$HOME\Downloads\bethesda_setup.exe"
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\bethesda_setup.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\bethesda_setup.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallBorderlessGaming {
        Read-Host 'A web browser will be opened.  Download borderlessgaming into the downloads folder. Press enter to begin '
        Start-Process 'https://github.com/Codeusa/Borderless-Gaming/releases'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\borderlessgaming*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\borderlessgaming*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallDiscord {
        Invoke-WebRequest 'https://discordapp.com/api/download?platform=win' -OutFile "$HOME\Downloads\discord_setup.exe"
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\discord_setup.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\discord_setup.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallFedoraMediaWriter {
        Read-Host 'A web browser will be opened.  Download fedoramediawriter into the downloads folder. Press enter to begin '
        Start-Process 'https://getfedora.org/en/workstation/download/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\fedoramedia*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\fedoramedia*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallVisualStudioCommunity {
        Read-Host 'A web browser will be opened.  Download visual studio community into downloads folder. Press enter to begin '
        Start-Process 'https://visualstudio.microsoft.com/vs/community/'
        Read-Host 'Press enter when download is complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\vs_community*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\vs_community*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallOpenVPN {
        Read-Host 'A web browser will be opened.  Download openvpn into the downloads folder. Press enter to begin '
        Start-Process 'https://openvpn.net/community-downloads/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\openvpn*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\openvpn*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallTwitch {
        Invoke-WebRequest 'https://desktop.twitchsvc.net/installer/windows/TwitchSetup.exe' -OutFile "$HOME\Downloads\twitch_setup.exe"
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\twitch_setup.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\twitch_setup.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallVortex {
        Read-Host 'A web browser will be opened.  Download vortex into the downloads folder. Press enter to begin '
        Start-Process 'https://github.com/Nexus-Mods/Vortex/releases'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\Vortex*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\Vortex*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallVisualRedistributables {
        Read-Host 'A web browser will be opened.  Download and install the Visual C++ Redistributables. Press enter to begin '
        Start-Process 'https://support.microsoft.com/en-us/help/2977003/the-latest-supported-visual-c-downloads'
        Read-Host 'Press enter when finished installing '
    }

    function InstallRockstarLauncher {
        Read-Host 'A web browser will be opened.  Download the rockstar game launcher into the downloads folder. Press enter to begin '
        Start-Process 'https://socialclub.rockstargames.com/rockstar-games-launcher'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\Rockstar*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\Rockstar*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallRPGMakerRTPs {
        Read-Host 'A web browser will be opened.  Download and install all of the RPGMaker RTPs into the downloads folder. Press enter to begin '
        Start-Process 'https://www.rpgmakerweb.com/download/additional/run-time-packages'
        Read-Host 'Press enter when finished installing '
    }

    function InstallGolang {
        Read-Host 'A web browser will be opened.  Download the Golang binary into the downloads folder. Press enter to begin '
        Start-Process 'https://golang.org/dl/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\go*.windows-amd64.msi" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\go*.windows-amd64.msi" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallEdge {
        Read-Host 'A web browser will be opened.  Download the edge binary into the downloads folder. Press enter to begin '
        Start-Process 'https://www.microsoft.com/en-us/edge'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\MicrosoftEdgeSetup.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\MicrosoftEdgeSetup.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallReolink {
        Read-Host 'A web browser will be opened.  Download the reolink binary into the downloads folder. Press enter to begin '
        Start-Process 'https://reolink.com/software-and-manual/'
        Read-Host 'Press enter when downloads are complete '
        # Extract zip folder
        Get-ChildItem "$HOME\Downloads\Reolink*.zip" | Expand-Archive -DestinationPath "$HOME\Downloads\Reolink"
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\Reolink\Reolink*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\Reolink\Reolink*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallUplay {
        Read-Host 'A web browser will be opened.  Download the uplay binary into the downloads folder. Press enter to begin '
        Start-Process 'https://uplay.ubisoft.com/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\UplayInstaller.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\UplayInstaller.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallMicrosoftOffice {
        Read-Host 'A web browser will be opened.  Download the office binary into the downloads folder. Press enter to begin '
        Start-Process 'https://portal.office.com/account/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\*O365ProPlusRetail*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\*O365ProPlusRetail*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallLocaleEmulator {
        Read-Host 'A web browser will be opened.  Download the zip folder into the downloads folder. Press enter to begin '
        Start-Process 'https://github.com/xupefei/Locale-Emulator/releases'
        Read-Host 'Press enter when downloads are complete '
        # Extract zip folder
        Get-ChildItem "$HOME\Downloads\Locale.Emulator*.zip" | Expand-Archive -DestinationPath "$HOME\Downloads\LocaleEmulator"
        # Move files to correct folder
        Get-ChildItem -Path "$HOME\Downloads\LocaleEmulator\*" -Recurse | Move-Item -Destination "$HOME\Downloads\LocaleEmulator"
        Start-Process -FilePath "$HOME\Downloads\LocaleEmulator\LEInstaller.exe" -Wait
    }

    function InstallWireguard {
        Read-Host 'A web browser will be opened.  Download the msi file into the downloads folder. Press enter to begin '
        Start-Process 'https://www.wireguard.com/install/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\*wireguard*.msi" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\*wireguard*.msi" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallWindowsStoreApps {
        # Install windows store apps
        Read-Host 'Windows store will be opened.  Install any windows store apps used. Press enter to begin '
        Start-Process 'ms-windows-store://pdp'
        Read-Host 'Press enter when finished installing windows store apps '
    }

    function InstallZoom {
        Invoke-WebRequest 'https://zoom.us/client/latest/ZoomInstaller.exe' -OutFile "$HOME\Downloads\ZoomInstaller.exe"
        if (Get-AuthenticodeSignature -FilePath "$HOME\Downloads\ZoomInstaller.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$HOME\Downloads\ZoomInstaller.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    # To Update all installed choclatey packages use command:
    # choco upgrade all

    # Call functions
    ApplicationsMenu1
    ApplicationsMenu2
    ApplicationsMenu3
    ApplicationsMenu4
    ApplicationsMenu5
    ApplicationsMenu6
    ApplicationsMenu7
    ApplicationsMenu8
    ApplicationsMenu9
}
