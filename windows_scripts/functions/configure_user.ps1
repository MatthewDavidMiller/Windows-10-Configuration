# Credits to Microsoft
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/new-localuser?view=powershell-5.1
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/add-localgroupmember?view=powershell-5.1

function CreateUser {
    $UserName = Read-Host 'Specify username ' -AsSecureString
    $Password = Read-Host 'Specify password ' -AsSecureString
    $FullName = Read-Host 'Specify Full Name '-AsSecureString
    $Description = Read-Host 'Specify Description of user ' -AsSecureString
    New-LocalUser "$UserName" -Password "$Password" -FullName "$FullName" -Description "$Description"
}

function AddUserToLocalAdmin {
    $AdminGroup = 'Administrators'
    $User = Read-Host 'Specify user to add to local admin group ' -AsSecureString
    Add-LocalGroupMember -Group "$AdminGroup" -Member "$User"
}
