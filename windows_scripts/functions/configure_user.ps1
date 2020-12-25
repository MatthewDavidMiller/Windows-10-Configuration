# Credits to Microsoft
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/new-localuser?view=powershell-5.1
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/add-localgroupmember?view=powershell-5.1

function CreateUser {
    $UserName = Read-Host 'Specify username '
    $Password = Read-Host 'Specify password ' -AsSecureString
    $FullName = Read-Host 'Specify Full Name '
    $Description = Read-Host 'Specify Description of user '
    New-LocalUser "$UserName" -Password $Password -FullName "$FullName" -Description "$Description"
}

function AddUserToLocalAdmin {
    $AdminGroup = 'Administrators'
    $User = Read-Host 'Specify user to add to local admin group '
    Add-LocalGroupMember -Group "$AdminGroup" -Member "$User"
}
