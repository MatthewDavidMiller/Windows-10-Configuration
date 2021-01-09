function InstallApplications {

    function ApplicationsMenu {
        function Show-Menu {
            param (
                [string]$Title = 'Install Options 1'
            )
            Clear-Host
            Write-Host "================ $Title ================"

            Write-Host "1: Press '1' to Install winget."
            Write-Host "2: Press '2' to Install 7Zip."
            Write-Host "3: Press '3' to Install Visual C++ redistributables 2015-2019."
            Write-Host "4: Press '4' to Install Visual C++ redistributables 2013."
            Write-Host "5: Press '5' to Install Visual C++ redistributables 2012."
            Write-Host "6: Press '6' to Install Visual C++ redistributables 2010."
            Write-Host "7: Press '7' to Install Visual C++ redistributables 2008."
            Write-Host "8: Press '8' to Install Visual C++ redistributables 2005."
            Write-Host "9: Press '9' to Install Vlc."
            Write-Host "10: Press '10' to Install Blender."
            Write-Host "11: Press '11' to Install Rufus."
            Write-Host "12: Press '12' to Install WinSCP."
            Write-Host "13: Press '13' to Install Putty."
            Write-Host "14: Press '14' to Install Libreoffice."
            Write-Host "15: Press '15' to Install Java."
            Write-Host "16: Press '16' to Install Sysinternals."
            Write-Host "17: Press '17' to Install VSCode."
            Write-Host "18: Press '18' to Install Etcher."
            Write-Host "19: Press '19' to Install OpenJDK."
            Write-Host "20: Press '20' to Install Tiny Nvidia Updater."
            Write-Host "21: Press '21' to Install Firefox."
            Write-Host "22: Press '22' to Install Chrome."
            Write-Host "23: Press '23' to Install GIMP."
            Write-Host "24: Press '24' to Install QBittorent."
            Write-Host "25: Press '25' to Install Vmware Player."
            Write-Host "26: Press '26' to Install Nvidia Profile Inspector."
            Write-Host "27: Press '27' to Install Steam."
            Write-Host "28: Press '28' to Install Origin."
            Write-Host "29: Press '29' to Install GOG."
            Write-Host "30: Press '30' to Install Epic Store."
            Write-Host "31: Press '31' to Install Bethesda Launcher."
            Write-Host "32: Press '32' to Install Borderless Gaming."
            Write-Host "33: Press '33' to Install Discord."
            Write-Host "34: Press '34' to Install Fedora Media Writer."
            Write-Host "35: Press '35' to Install Visual Studio Community."
            Write-Host "36: Press '36' to Install OpenVPN."
            Write-Host "37: Press '37' to Install Twitch."
            Write-Host "38: Press '38' to Install Vortex."
            Write-Host "39: Press '39' to Install Install Notepad++."
            Write-Host "40: Press '40' to Install Rockstar Launcher."
            Write-Host "41: Press '41' to Install Rpgmaker RTP."
            Write-Host "42: Press '42' to Install Zoom Meetings."
            Write-Host "43: Press '43' to Install Reolink."
            Write-Host "44: Press '44' to Install Uplay."
            Write-Host "45: Press '45' to Install Microsoft Office."
            Write-Host "46: Press '46' to Install Locale Emulator."
            Write-Host "47: Press '47' to Install Wireguard."
            Write-Host "48: Press '48' to Install Nvidia Geforce Experience."
            Write-Host "q: Press 'q' to quit."
        }
        do {
            Show-Menu
            $selection = Read-Host "Select an option"
            switch ($selection) {
                '1' {
                    InstallWinGet
                }
                '2' {
                    Install7Zip
                }
                '3' {
                    InstallVisualRedistributable20152019
                }
                '4' {
                    InstallVisualRedistributable2013
                }
                '5' {
                    InstallVisualRedistributable2012
                }
                '6' {
                    InstallVisualRedistributable2010
                }
                '7' {
                    InstallVisualRedistributable2008
                }
                '8' {
                    InstallVisualRedistributable2005
                }
                '9' {
                    InstallVlc
                }
                '10' {
                    InstallBlender
                }
                '11' {
                    InstallRufus
                }
                '12' {
                    InstallWinSCP
                }
                '13' {
                    InstallPutty
                }
                '14' {
                    InstallLibreoffice
                }
                '15' {
                    InstallJava
                }
                '16' {
                    InstallSysinternals
                }
                '17' {
                    InstallVSCode
                }
                '18' {
                    InstallEtcher
                }
                '19' {
                    InstallOpenJDK
                }
                '20' {
                    InstallTinyNvidiaUpdater
                }
                '21' {
                    InstallFirefox
                }
                '22' {
                    InstallChrome
                }
                '23' {
                    InstallGIMP
                }
                '24' {
                    InstallQBittorent
                }
                '25' {
                    InstallVmwarePlayer
                }
                '26' {
                    InstallNvidiaProfileInspector
                }
                '27' {
                    InstallSteam
                }
                '28' {
                    InstallOrigin
                }
                '29' {
                    InstallGOG
                }
                '30' {
                    InstallEpicStore
                }
                '31' {
                    InstallBethesdaLauncher
                }
                '32' {
                    InstallBorderlessGaming
                }
                '33' {
                    InstallDiscord
                }
                '34' {
                    InstallFedoraMediaWriter
                }
                '35' {
                    InstallVisualStudioCommunity
                }
                '36' {
                    InstallOpenVPN
                }
                '37' {
                    InstallTwitch
                }
                '38' {
                    InstallVortex
                }
                '39' {
                    InstallNotepadPlusPlus
                }
                '40' {
                    InstallRockstarLauncher
                }
                '41' {
                    InstallRPGMakerRTPs
                }
                '42' {
                    InstallZoom
                }
                '43' {
                    InstallReolink
                }
                '44' {
                    InstallUplay
                }
                '45' {
                    InstallMicrosoftOffice
                }
                '46' {
                    InstallLocaleEmulator
                }
                '47' {
                    InstallWireguard
                }
                '48' {
                    InstallGeforceExperience
                }
            }
            Pause
        }
        until ($selection -eq 'q')
    }

    function InstallNotepadPlusPlus {
        winget install Notepad++
    }

    function Install7Zip {
        winget install 7Zip
    }

    function InstallQBittorent {
        winget install qBittorrent
    }

    function InstallRufus {
        winget install Rufus
    }

    function InstallEtcher {
        winget install Etcher
    }

    function InstallGIMP {
        winget install GIMP
    }

    function InstallVlc {
        winget install 'VLC media player'
    }

    function InstallBlender {
        winget install Blender
    }
    function InstallWinSCP {
        winget install WinSCP
    }

    function InstallPutty {
        winget install PuTTY
    }

    function InstallLibreoffice {
        winget install LibreOffice
    }

    function InstallJava {
        winget install 'Java Runtime Environment'
    }

    function InstallSysinternals {
        # Create shortcut
        $WScriptShell = New-Object -ComObject WScript.Shell
        $Shortcut = $WScriptShell.CreateShortcut("$UserPath\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\SysinternalsSuite.lnk")
        $Shortcut.WorkingDirectory = "\\live.sysinternals.com\tools"
        $Shortcut.TargetPath = "\\live.sysinternals.com\tools"
        $Shortcut.Save()
    }

    function InstallVSCode {
        winget install 'Visual Studio Code'
    }

    function InstallOpenJDK {
        winget install 'Liberica JDK 8'
    }

    function InstallTinyNvidiaUpdater {
        Read-Host 'A web browser will be opened.  Download tinynvidiaupdater and the dll file into the downloads folder. Press enter to begin '
        Start-Process 'https://github.com/ElPumpo/TinyNvidiaUpdateChecker/releases'
        Read-Host 'Press enter when downloads are complete '
        Get-ChildItem "$UserPath\Downloads\TinyNvidiaUpdateChecker*.exe" | Rename-Item -NewName 'TinyNvidiaUpdateChecker.exe'
        New-Item -ItemType Directory -Force -Path "$UserPath\AppData\Local\Programs\TinyNvidiaUpdateChecker"
        Move-Item -Path "$UserPath\Downloads\TinyNvidiaUpdateChecker.exe" -Destination "$UserPath\AppData\Local\Programs\TinyNvidiaUpdateChecker\TinyNvidiaUpdateChecker.exe"
        Move-Item -Path "$UserPath\Downloads\HtmlAgilityPack.dll" -Destination "$UserPath\AppData\Local\Programs\TinyNvidiaUpdateChecker\HtmlAgilityPack.dll"
        # Create shortcut
        $WScriptShell = New-Object -ComObject WScript.Shell
        $Shortcut = $WScriptShell.CreateShortcut("$UserPath\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\TinyNvidiaUpdateChecker.lnk")
        $Shortcut.WorkingDirectory = "$UserPath\AppData\Local\Programs\TinyNvidiaUpdateChecker"
        $Shortcut.TargetPath = "$UserPath\AppData\Local\Programs\TinyNvidiaUpdateChecker\TinyNvidiaUpdateChecker.exe"
        $Shortcut.Save()
    }

    function InstallFirefox {
        winget install Firefox
    }

    function InstallChrome {
        winget install 'Google Chrome'
    }

    function InstallVmwarePlayer {
        winget install 'VMware Workstation Player'
    }

    function InstallNvidiaProfileInspector {
        Read-Host 'A web browser will be opened.  Download nvidiaprofileinspector into the downloads folder. Press enter to begin '
        Start-Process 'https://github.com/Orbmu2k/nvidiaProfileInspector/releases'
        Read-Host 'Press enter when downloads are complete '
        # Extract zip folder
        Expand-Archive -LiteralPath "$UserPath\Downloads\nvidiaProfileInspector.zip" -DestinationPath "$UserPath\AppData\Local\Programs\NvidiaProfileInspector"
        # Create shortcut
        $WScriptShell = New-Object -ComObject WScript.Shell
        $Shortcut = $WScriptShell.CreateShortcut("$UserPath\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\NvidiaProfileInspector.lnk")
        $Shortcut.WorkingDirectory = "$UserPath\AppData\Local\Programs\NvidiaProfileInspector"
        $Shortcut.TargetPath = "$UserPath\AppData\Local\Programs\NvidiaProfileInspector\nvidiaProfileInspector.exe"
        $Shortcut.Save()
    }

    function InstallSteam {
        winget install Steam
    }

    function InstallOrigin {
        winget install Origin
    }

    function InstallGOG {
        winget install 'GOG Galaxy'
    }

    function InstallEpicStore {
        winget install 'Epic Games Launcher'
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
        winget install 'Borderless Gaming'
    }

    function InstallDiscord {
        winget install Discord
    }

    function InstallFedoraMediaWriter {
        winget install 'Fedora Media Writer'
    }

    function InstallVisualStudioCommunity {
        winget install 'Visual Studio Community'
    }

    function InstallOpenVPN {
        winget install 'OpenVPN Connect'
    }

    function InstallTwitch {
        winget install 'Twitch App for Windows'
    }

    function InstallVortex {
        winget install 'Vortex'
    }

    function InstallVisualRedistributable20152019 {
        winget install 'Microsoft.VC++2015-2019Redist-x86'
        winget install 'Microsoft.VC++2015-2019Redist-x64'
    }

    function InstallVisualRedistributable2005 {
        winget install 'Microsoft.VC++2005Redist-x86'
        winget install 'Microsoft.VC++2005Redist-x64'
    }

    function InstallVisualRedistributable2008 {
        winget install 'Microsoft.VC++2008Redist-x86'
        winget install 'Microsoft.VC++2008Redist-x64'
    }

    function InstallVisualRedistributable2010 {
        winget install 'Microsoft.VC++2010Redist-x86'
        winget install 'Microsoft.VC++2010Redist-x64'
    }

    function InstallVisualRedistributable2012 {
        winget install 'Microsoft.VC++2012Redist-x86'
        winget install 'Microsoft.VC++2012Redist-x64'
    }

    function InstallVisualRedistributable2013 {
        winget install 'Microsoft.VC++2013Redist-x86'
        winget install 'Microsoft.VC++2013Redist-x64'
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
        winget install 'Ubisoft Connect'
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

    function InstallZoom {
        winget install 'Zoom'
    }

    function GetUserPath {
        $GetLoggedInUser = Get-WmiObject -Class Win32_ComputerSystem | Select-Object username
        $SplitLoggedInUser = $GetLoggedInUser.username
        $LoggedInUser = $SplitLoggedInUser.Split("\")
        $Username = $LoggedInUser[1]
        $global:UserPath = "C:\Users\$Username"
    }

    function InstallWinGet {
        Read-Host 'A web browser will be opened.  Download the appinstaller package into the downloads folder. Press enter to begin '
        Start-Process 'https://github.com/microsoft/winget-cli/releases'
        Read-Host 'Press enter when downloads are complete '
        if (Get-AuthenticodeSignature -FilePath "$UserPath\Downloads\Microsoft.DesktopAppInstaller*.appxbundle" | Where-Object { $_.Status -eq "Valid" }) {
            Start-Process -FilePath "$UserPath\Downloads\Microsoft.DesktopAppInstaller*.appxbundle" -Wait
        }
        else {
            Read-Host "Signature is not valid, application will not be installed"
        }
    }

    function InstallGeforceExperience {
        winget install 'Nvidia GeForce Experience'
    }

    # To Update all installed choclatey packages use command:
    # choco upgrade all

    # Call functions
    GetUserPath
    ApplicationsMenu
}
