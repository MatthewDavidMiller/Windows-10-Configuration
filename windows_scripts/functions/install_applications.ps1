function InstallApplications {

    function ApplicationsMenu {
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
            Write-Host "7: Press '7' to Install Rufus."
            Write-Host "8: Press '8' to Install Etcher."
            Write-Host "9: Press '9' to Install Gimp."
            Write-Host "10: Press '10' to Install Git."
            Write-Host "11: Press '11' to Install Vlc."
            Write-Host "12: Press '12' to Install Blender."
            Write-Host "13: Press '13' to Install Bitwarden."
            Write-Host "14: Press '14' to Install WinSCP."
            Write-Host "15: Press '15' to Install Putty."
            Write-Host "16: Press '16' to Install Python."
            Write-Host "17: Press '17' to Install Libreoffice."
            Write-Host "18: Press '18' to Install Java."
            Write-Host "19: Press '19' to Install Sysinternals."
            Write-Host "20: Press '20' to Install VSCode."
            Write-Host "21: Press '21' to Install Wireshark."
            Write-Host "22: Press '22' to Install OpenJDK."
            Write-Host "23: Press '23' to Install Tiny Nvidia Updater."
            Write-Host "24: Press '24' to Install Firefox."
            Write-Host "25: Press '25' to Install Chrome."
            Write-Host "26: Press '26' to Install Edge."
            Write-Host "27: Press '27' to Install Freefilesync."
            Write-Host "28: Press '28' to Install Vmware Player."
            Write-Host "29: Press '29' to Install Nvidia Profile Inspector."
            Write-Host "30: Press '30' to Install Steam."
            Write-Host "31: Press '31' to Install Origin."
            Write-Host "32: Press '32' to Install GOG."
            Write-Host "33: Press '33' to Install Epic Store."
            Write-Host "35: Press '34' to Install Bethesda Launcher."
            Write-Host "36: Press '35' to Install Borderless Gaming."
            Write-Host "37: Press '36' to Install Discord."
            Write-Host "38: Press '37' to Install Fedora Media Writer."
            Write-Host "39: Press '38' to Install Visual Studio Community."
            Write-Host "40: Press '39' to Install OpenVPN."
            Write-Host "41: Press '40' to Install Twitch."
            Write-Host "42: Press '41' to Install Vortex."
            Write-Host "43: Press '42' to Install Visual Redistributables."
            Write-Host "44: Press '43' to Install Rockstar Launcher."
            Write-Host "45: Press '44' to Install Rpgmaker RTP."
            Write-Host "46: Press '45' to Install Golang."
            Write-Host "47: Press '46' to Install Reolink."
            Write-Host "48: Press '47' to Install Uplay."
            Write-Host "49: Press '48' to Install Microsoft Office."
            Write-Host "50: Press '49' to Install Locale Emulator."
            Write-Host "51: Press '50' to Install Wireguard."
            Write-Host "52: Press '51' to Install Windows Store Apps."
            Write-Host "53: Press '52' to Install Zoom Meetings."
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
                '7' {
                    InstallRufus
                }
                '8' {
                    InstallEtcher
                }
                '9' {
                    InstallGimp
                }
                '10' {
                    InstallGit
                }
                '11' {
                    InstallVlc
                }
                '12' {
                    InstallBlender
                }
                '13' {
                    InstallBitwarden
                }
                '14' {
                    InstallWinSCP
                }
                '15' {
                    InstallPutty
                }
                '16' {
                    InstallPython
                }
                '17' {
                    InstallLibreoffice
                }
                '18' {
                    InstallJava
                }
                '19' {
                    InstallSysinternals
                }
                '20' {
                    InstallVSCode
                }
                '21' {
                    InstallWireshark
                }
                '22' {
                    InstallOpenJDK
                }
                '23' {
                    InstallTinyNvidiaUpdater
                }
                '24' {
                    InstallFirefox
                }
                '25' {
                    InstallChrome
                }
                '26' {
                    InstallEdge
                }
                '27' {
                    InstallFreeFileSync
                }
                '28' {
                    InstallVmwarePlayer
                }
                '29' {
                    InstallNvidiaProfileInspector
                }
                '30' {
                    InstallSteam
                }
                '31' {
                    InstallOrigin
                }
                '32' {
                    InstallGOG
                }
                '33' {
                    InstallEpicStore
                }
                '34' {
                    InstallBethesdaLauncher
                }
                '35' {
                    InstallBorderlessGaming
                }
                '36' {
                    InstallDiscord
                }
                '37' {
                    InstallFedoraMediaWriter
                }
                '38' {
                    InstallVisualStudioCommunity
                }
                '39' {
                    InstallOpenVPN
                }
                '40' {
                    InstallTwitch
                }
                '41' {
                    InstallVortex
                }
                '42' {
                    InstallVisualRedistributables
                }
                '43' {
                    InstallRockstarLauncher
                }
                '44' {
                    InstallRPGMakerRTPs
                }
                '45' {
                    InstallGolang
                }
                '46' {
                    InstallReolink
                }
                '47' {
                    InstallUplay
                }
                '48' {
                    InstallMicrosoftOffice
                }
                '49' {
                    InstallLocaleEmulator
                }
                '50' {
                    InstallWireguard
                }
                '51' {
                    InstallWindowsStoreApps
                }
                '52' {
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
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\npp*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\npp*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function Install7Zip {
        Read-Host 'A web browser will be opened.  Download 7zip 32 bit and 64 bit into the downloads folder. Press enter to begin '
        Start-Process 'https://www.7-zip.org/download.html'
        Read-Host 'Press enter when downloads are complete '
        New-Item -ItemType Directory -Force -Path "$UserPath\Downloads\7zip_64_bit"
        Move-Item -Path "$UserPath\Downloads\7z*x64.exe" -Destination "$UserPath\Downloads\7zip_64_bit\7zip_x64.exe"
        Start-Process -FilePath "$UserPath\Downloads\7z*.exe" -Wait
        Start-Process -FilePath "$UserPath\Downloads\7zip_64_bit\7z*x64.exe" -Wait
    }

    function InstallNMap {
        Read-Host 'A web browser will be opened.  Download nmap into the downloads folder. Press enter to begin '
        Start-Process 'https://nmap.org/download.html'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\nmap*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\nmap*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallQBittorent {
        Read-Host 'A web browser will be opened.  Download qbittorrent into the downloads folder. Press enter to begin '
        Start-Process 'https://www.qbittorrent.org/download.php'
        Read-Host 'Press enter when downloads are complete '
        Start-Process -FilePath "$UserPath\Downloads\qbittorrent*.exe" -Wait
    }

    function InstallRufus {
        Read-Host 'A web browser will be opened.  Download rufus into the downloads folder. Press enter to begin '
        Start-Process 'https://rufus.ie/'
        Read-Host 'Press enter when downloads are complete '
        Get-ChildItem "$UserPath\Downloads\rufus*.exe" | Rename-Item -NewName 'rufus.exe'
        New-Item -ItemType Directory -Force -Path 'C:\Program Files\Rufus'
        Move-Item -Path "$UserPath\Downloads\rufus.exe" -Destination 'C:\Program Files\Rufus\rufus.exe'
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
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\balenaetcher*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\balenaetcher*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallGimp {
        Read-Host 'A web browser will be opened.  Download gimp into the downloads folder. Press enter to begin '
        Start-Process 'https://www.gimp.org/downloads/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\gimp*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\gimp*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallGit {
        Read-Host 'A web browser will be opened.  Download git into the downloads folder. Press enter to begin '
        Start-Process 'https://git-scm.com/downloads'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\git*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\git*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
        # Add ssh key
        Copy-Item 'N:\SSHConfigs\github\github_ssh' -Destination "$UserPath\.ssh\id_rsa"
    }

    function InstallVlc {
        Read-Host 'A web browser will be opened.  Download vlc into the downloads folder. Press enter to begin '
        Start-Process 'https://www.videolan.org/vlc/download-windows.html'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\vlc*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\vlc*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallBlender {
        Read-Host 'A web browser will be opened.  Download blender into the downloads folder. Press enter to begin '
        Start-Process 'https://www.blender.org/download/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\blender*.msi" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\blender*.msi" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallBitwarden {
        Invoke-WebRequest 'https://vault.bitwarden.com/download/?app=desktop&platform=windows' -OutFile "$UserPath\Downloads\bitwarden_installer.exe"
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\bitwarden_installer.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\bitwarden_installer.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallWinSCP {
        Read-Host 'A web browser will be opened.  Download winscp into the downloads folder. Press enter to begin '
        Start-Process 'https://winscp.net/eng/download.php'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\winscp*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\winscp*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallPutty {
        Read-Host 'A web browser will be opened.  Download putty into the downloads folder. Press enter to begin '
        Start-Process 'https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\putty*.msi" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\putty*.msi" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
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

    function InstallLibreoffice {
        Read-Host 'A web browser will be opened.  Download libreoffice fresh into the downloads folder. Press enter to begin '
        Start-Process 'https://www.libreoffice.org/download/download/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\libreoffice*.msi" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\libreoffice*.msi" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallJava {
        Read-Host 'A web browser will be opened.  Download java 64 bit into the downloads folder. Press enter to begin '
        Start-Process 'https://www.java.com/en/download/manual.jsp'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\jre*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\jre*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallSysinternals {
        Invoke-WebRequest 'https://download.sysinternals.com/files/SysinternalsSuite.zip' -OutFile "$UserPath\Downloads\SysinternalsSuite.zip"
        # Extract zip folder
        Expand-Archive -LiteralPath "$UserPath\Downloads\SysinternalsSuite.zip" -DestinationPath 'C:\Program Files\SysinternalsSuite'
        # Create shortcut
        $WScriptShell = New-Object -ComObject WScript.Shell
        $Shortcut = $WScriptShell.CreateShortcut('C:\ProgramData\Microsoft\Windows\Start Menu\Programs\SysinternalsSuite.lnk')
        $Shortcut.WorkingDirectory = 'C:\Program Files\SysinternalsSuite'
        $Shortcut.TargetPath = 'C:\Program Files\SysinternalsSuite'
        $Shortcut.Save()
    }

    function InstallVSCode {
        Invoke-WebRequest 'https://aka.ms/win32-x64-user-stable' -OutFile "$UserPath\Downloads\vscode_installer.exe"
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\vscode_installer.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\vscode_installer.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallWireshark {
        Read-Host 'A web browser will be opened.  Download wireshark into the downloads folder. Press enter to begin '
        Start-Process 'https://www.wireshark.org/#download'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\wireshark*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\wireshark*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallOpenJDK {
        Read-Host 'A web browser will be opened.  Download openjdk into the downloads folder. Press enter to begin '
        Start-Process 'https://adoptopenjdk.net/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\openjdk*.msi" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\openjdk*.msi" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallTinyNvidiaUpdater {
        Read-Host 'A web browser will be opened.  Download tinynvidiaupdater and the dll file into the downloads folder. Press enter to begin '
        Start-Process 'https://github.com/ElPumpo/TinyNvidiaUpdateChecker/releases'
        Read-Host 'Press enter when downloads are complete '
        Get-ChildItem "$UserPath\Downloads\TinyNvidiaUpdateChecker*.exe" | Rename-Item -NewName 'TinyNvidiaUpdateChecker.exe'
        New-Item -ItemType Directory -Force -Path 'C:\Program Files\TinyNvidiaUpdateChecker'
        Move-Item -Path "$UserPath\Downloads\TinyNvidiaUpdateChecker.exe" -Destination 'C:\Program Files\TinyNvidiaUpdateChecker\TinyNvidiaUpdateChecker.exe'
        Move-Item -Path "$UserPath\Downloads\HtmlAgilityPack.dll" -Destination 'C:\Program Files\TinyNvidiaUpdateChecker\HtmlAgilityPack.dll'
        # Create shortcut
        $WScriptShell = New-Object -ComObject WScript.Shell
        $Shortcut = $WScriptShell.CreateShortcut('C:\ProgramData\Microsoft\Windows\Start Menu\Programs\TinyNvidiaUpdateChecker.lnk')
        $Shortcut.WorkingDirectory = 'C:\Program Files\TinyNvidiaUpdateChecker'
        $Shortcut.TargetPath = 'C:\Program Files\TinyNvidiaUpdateChecker\TinyNvidiaUpdateChecker.exe'
        $Shortcut.Save()
    }

    function InstallFirefox {
        Invoke-WebRequest 'https://download.mozilla.org/?product=firefox-msi-latest-ssl&os=win64&lang=en-US' -OutFile "$UserPath\Downloads\firefox.msi"
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\firefox.msi" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\firefox.msi" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallChrome {
        Invoke-WebRequest 'https://dl.google.com/chrome/install/latest/chrome_installer.exe' -OutFile "$UserPath\Downloads\chrome_installer.exe"
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\chrome_installer.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\chrome_installer.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallFreeFileSync {
        Read-Host 'A web browser will be opened.  Download freefilesync into the downloads folder. Press enter to begin '
        Start-Process 'https://freefilesync.org/download.php'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\FreeFileSync*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\FreeFileSync*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallVmwarePlayer {
        Invoke-WebRequest 'https://www.vmware.com/go/getplayer-win' -OutFile "$UserPath\Downloads\vmware_player_setup.exe"
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\vmware_player_setup.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\vmware_player_setup.exe" -Wait
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
        Expand-Archive -LiteralPath "$UserPath\Downloads\nvidiaProfileInspector.zip" -DestinationPath 'C:\Program Files\NvidiaProfileInspector'
        # Create shortcut
        $WScriptShell = New-Object -ComObject WScript.Shell
        $Shortcut = $WScriptShell.CreateShortcut('C:\ProgramData\Microsoft\Windows\Start Menu\Programs\NvidiaProfileInspector.lnk')
        $Shortcut.WorkingDirectory = 'C:\Program Files\NvidiaProfileInspector'
        $Shortcut.TargetPath = 'C:\Program Files\NvidiaProfileInspector\nvidiaProfileInspector.exe'
        $Shortcut.Save()
    }

    function InstallSteam {
        Invoke-WebRequest 'https://steamcdn-a.akamaihd.net/client/installer/SteamSetup.exe' -OutFile "$UserPath\Downloads\steam_setup.exe"
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\steam_setup.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\steam_setup.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallOrigin {
        Invoke-WebRequest 'https://www.dm.origin.com/download' -OutFile "$UserPath\Downloads\origin_setup.exe"
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\origin_setup.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\origin_setup.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallGOG {
        Read-Host 'A web browser will be opened.  Download gog into the downloads folder. Press enter to begin '
        Start-Process 'https://www.gog.com/galaxy'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\gog_galaxy*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\gog_galaxy*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallEpicStore {
        Read-Host 'A web browser will be opened.  Download epic launcher into the downloads folder. Press enter to begin '
        Start-Process 'https://www.epicgames.com/store/en-US/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\EpicInstaller*.msi" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\EpicInstaller*.msi" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallBethesdaLauncher {
        Invoke-WebRequest 'https://download.cdp.bethesda.net/BethesdaNetLauncher_Setup.exe' -OutFile "$UserPath\Downloads\bethesda_setup.exe"
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\bethesda_setup.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\bethesda_setup.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallBorderlessGaming {
        Read-Host 'A web browser will be opened.  Download borderlessgaming into the downloads folder. Press enter to begin '
        Start-Process 'https://github.com/Codeusa/Borderless-Gaming/releases'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\borderlessgaming*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\borderlessgaming*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallDiscord {
        Invoke-WebRequest 'https://discordapp.com/api/download?platform=win' -OutFile "$UserPath\Downloads\discord_setup.exe"
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\discord_setup.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\discord_setup.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallFedoraMediaWriter {
        Read-Host 'A web browser will be opened.  Download fedoramediawriter into the downloads folder. Press enter to begin '
        Start-Process 'https://getfedora.org/en/workstation/download/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\fedoramedia*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\fedoramedia*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallVisualStudioCommunity {
        Read-Host 'A web browser will be opened.  Download visual studio community into downloads folder. Press enter to begin '
        Start-Process 'https://visualstudio.microsoft.com/vs/community/'
        Read-Host 'Press enter when download is complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\vs_community*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\vs_community*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallOpenVPN {
        Read-Host 'A web browser will be opened.  Download openvpn into the downloads folder. Press enter to begin '
        Start-Process 'https://openvpn.net/community-downloads/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\openvpn*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\openvpn*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallTwitch {
        Invoke-WebRequest 'https://desktop.twitchsvc.net/installer/windows/TwitchSetup.exe' -OutFile "$UserPath\Downloads\twitch_setup.exe"
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\twitch_setup.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\twitch_setup.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallVortex {
        Read-Host 'A web browser will be opened.  Download vortex into the downloads folder. Press enter to begin '
        Start-Process 'https://github.com/Nexus-Mods/Vortex/releases'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\Vortex*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\Vortex*.exe" -Wait
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
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\Rockstar*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\Rockstar*.exe" -Wait
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
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\go*.windows-amd64.msi" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\go*.windows-amd64.msi" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallEdge {
        Read-Host 'A web browser will be opened.  Download the edge binary into the downloads folder. Press enter to begin '
        Start-Process 'https://www.microsoft.com/en-us/edge'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\MicrosoftEdgeSetup.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\MicrosoftEdgeSetup.exe" -Wait
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
        Get-ChildItem "$UserPath\Downloads\Reolink*.zip" | Expand-Archive -DestinationPath "$UserPath\Downloads\Reolink"
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\Reolink\Reolink*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\Reolink\Reolink*.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallUplay {
        Read-Host 'A web browser will be opened.  Download the uplay binary into the downloads folder. Press enter to begin '
        Start-Process 'https://uplay.ubisoft.com/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\UplayInstaller.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\UplayInstaller.exe" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallMicrosoftOffice {
        Read-Host 'A web browser will be opened.  Download the office binary into the downloads folder. Press enter to begin '
        Start-Process 'https://portal.office.com/account/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\*O365ProPlusRetail*.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\*O365ProPlusRetail*.exe" -Wait
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
        Get-ChildItem "$UserPath\Downloads\Locale.Emulator*.zip" | Expand-Archive -DestinationPath "$UserPath\Downloads\LocaleEmulator"
        # Move files to correct folder
        Get-ChildItem -Path "$UserPath\Downloads\LocaleEmulator\*" -Recurse | Move-Item -Destination "$UserPath\Downloads\LocaleEmulator"
        Start-Process -FilePath "$UserPath\Downloads\LocaleEmulator\LEInstaller.exe" -Wait
    }

    function InstallWireguard {
        Read-Host 'A web browser will be opened.  Download the msi file into the downloads folder. Press enter to begin '
        Start-Process 'https://www.wireguard.com/install/'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\*wireguard*.msi" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\*wireguard*.msi" -Wait
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
        Invoke-WebRequest 'https://zoom.us/client/latest/ZoomInstaller.exe' -OutFile "$UserPath\Downloads\ZoomInstaller.exe"
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\ZoomInstaller.exe" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\ZoomInstaller.exe" -Wait
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
