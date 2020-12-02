function ConfigureNTP {
    # NTP client registry folder
    $NTPClient = "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\W32time\TimeProviders\NtpClient"
    # NTP parameters registry folder
    $NTPParameters = "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\W32time\Parameters"

    function ConfigureNTPClient {
        # Enable NTP client
        New-ItemProperty -Path $NTPClient -Name Enabled -Value "1" -PropertyType DWORD -Force | Out-Null
    }

    # Configure NTP client
    if (!(Test-Path $NTPClient)) {
        New-Item -Path $NTPClient -Force | Out-Null
        ConfigureNTPClient
    }
    else {
        ConfigureNTPClient
    }

    function ConfigureNTPParameters {
        # Set NTP server domain
        New-ItemProperty -Path $NTPParameters -Name NtpServer -Value 'time.windows.com,0x9' -PropertyType String -Force | Out-Null
        # Set NTP protocol type
        New-ItemProperty -Path $NTPParameters -Name 'Type' -Value 'NTP' -PropertyType String -Force | Out-Null
    }

    # Configure NTP parameters
    if (!(Test-Path $NTPParameters)) {
        New-Item -Path $NTPParameters -Force | Out-Null
        ConfigureNTPParameters
    }
    else {
        ConfigureNTPParameters
    }

}
