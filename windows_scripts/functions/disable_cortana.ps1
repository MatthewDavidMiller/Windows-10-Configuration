function DisableCortana {
    $CortanaKey = "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search"
    $CortanaKeyName = "AllowCortana"

    if (!(Test-Path $CortanaKey)) {
        New-Item -Path $CortanaKey -Force | Out-Null
        New-ItemProperty -Path $CortanaKey -Name $CortanaKeyName -Value "0" -PropertyType DWORD -Force | Out-Null
    }
    else {
        New-ItemProperty -Path $CortanaKey -Name $CortanaKeyName -Value "0" -PropertyType DWORD -Force | Out-Null
    }
}
