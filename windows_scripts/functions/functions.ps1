# Copyright (c) Matthew David Miller. All rights reserved.
# Licensed under the MIT License.
# Functions and scripts for Windows.

function ConfigureComputerName {
    $ComputerName = Read-Host 'Enter computer hostname '
    Rename-Computer -NewName "$ComputerName"
}

function ConfigurePowerOptions {
    # Disable hibernate
    powercfg /hibernate off
    powercfg /change -hibernate-timeout-ac 0
    powercfg /change -hibernate-timeout-dc 0
    # Set disk poweroff to 20 minutes
    powercfg /change -disk-timeout-ac 20
    powercfg /change -disk-timeout-dc 20
    # Set display turnoff to 5 minutes
    powercfg /change -monitor-timeout-ac 5
    powercfg /change -monitor-timeout-dc 5
    # Set standby timeout
    powercfg /change -standby-timeout-ac 0
    powercfg /change -standby-timeout-dc 0
}

function InstallFeatures {
    # Suppress progress bar
    $ProgressPreference = 'SilentlyContinue'
    # Enable Hyper-V
    Enable-WindowsOptionalFeature -Online -FeatureName 'Microsoft-Hyper-V' -All
    # Enable WSL
    Enable-WindowsOptionalFeature -Online -FeatureName 'Microsoft-Windows-Subsystem-Linux'
    Enable-WindowsOptionalFeature -Online -FeatureName 'VirtualMachinePlatform'
    # Reload PATH
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")
    # Set defaul WSL version to 2
    wsl --set-default-version 2
}

function RemoveFeatures {
    # Suppress progress bar
    $ProgressPreference = 'SilentlyContinue'
    # Disable internet explorer
    Disable-WindowsOptionalFeature -Online -FeatureName 'Internet-Explorer-Optional-amd64'
    # Disable powershell 2.0
    Disable-WindowsOptionalFeature -Online -FeatureName 'MicrosoftWindowsPowerShellV2Root'
}

function MapDrives {
    # Network Share locations
    $Share1 = '\\matt-nas.miller.lan\matt_files'

    # Mount Network Shares
    New-SmbMapping -LocalPath 'N:' -RemotePath "$Share1" -Persistent $True

    # Resarter explorer
    taskkill /IM "explorer.exe" /F
    Start-Process "explorer.exe"
}

# Refer to https://www.blackhillsinfosec.com/how-to-disable-llmnr-why-you-want-to/
function DisableLLMNR {
    # DNS client registry folder
    $DNSClient = "Registry::HKEY_LOCAL_MACHINE\Software\policies\Microsoft\Windows NT\DNSClient"

    function DisableLLMNR2 {
        # Set NTP server domain
        New-ItemProperty -Path $DNSClient -Name EnableMulticast -Value '0' -PropertyType DWORD -Force | Out-Null
    }

    # Configure NTP parameters
    if (!(Test-Path $DNSClient)) {
        New-Item -Path $DNSClient -Force | Out-Null
        DisableLLMNR2
    }
    else {
        DisableLLMNR2
    }
}

# Refer to http://blog.dbsnet.fr/disable-netbios-with-powershell
function DisableNetbios {
    # Interfaces registry folder
    $Netbios = "Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\services\NetBT\Parameters\Interfaces"

    # Disable Netbios
    Get-ChildItem $Netbios |
    ForEach-Object {
        New-ItemProperty -Path "$Netbios\$($_.pschildname)" -Name NetbiosOptions -Value '2' -PropertyType DWORD -Force | Out-Null
    }
}

# Refer to https://docs.microsoft.com/en-us/windows-server/storage/file-server/troubleshoot/detect-enable-and-disable-smbv1-v2-v3
function DisableSMBV1 {
    Disable-WindowsOptionalFeature -Online -FeatureName smb1protocol
}
