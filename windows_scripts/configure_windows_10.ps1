# Copyright (c) Matthew David Miller. All rights reserved.
# Licensed under the MIT License.
# Script to confgure settings in Windows 10

# Get neeeded files
Invoke-WebRequest 'https://raw.githubusercontent.com/MatthewDavidMiller/Windows-10-Configuration/stable/windows_scripts/windows_scripts.ps1' -OutFile "$PSScriptRoot\windows_scripts.ps1"

# Source Functions
. "$PSScriptRoot\windows_scripts.ps1"

# Prompts
$MapDrivesVar = Read-Host 'Map network drives? y/n '
