function ConfigureFirewallBase {
    $WindowsFirewall = "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall"
    $FirewallRules = "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\FirewallRules"
    $DomainProfile = "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile"
    $PrivateProfile = "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile"
    $PublicProfile = "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile"
    $DomainProfileLogging = "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile\Logging"
    $PrivateProfileLogging = "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile\Logging"
    $PublicProfileLogging = "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile\Logging"
    $FirewallStandardProfile = "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile"
    $FirewallAuthorizedApplications = "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile\AuthorizedApplications"
    $FirewallGloballyOpenPorts = "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile\GloballyOpenPorts"

    function FirewallGlobalSettings {
        New-ItemProperty -Path $WindowsFirewall -Name DisableStatefulFTP -Value "0" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $WindowsFirewall -Name DisableStatefulPPTP -Value "0" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $WindowsFirewall -Name IPSecExempt -Value "9" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $WindowsFirewall -Name PolicyVersion -Value "542" -PropertyType DWORD -Force | Out-Null
    }

    # Global settings
    if (!(Test-Path $WindowsFirewall)) {
        New-Item -Path $WindowsFirewall -Force | Out-Null
        FirewallGlobalSettings
    }
    else {
        FirewallGlobalSettings
    }

    # Configure profiles
    function FirewallDomainProfile {
        New-ItemProperty -Path $DomainProfile -Name AllowLocalPolicyMerge -Value "1" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $DomainProfile -Name AllowLocalIPsecPolicyMerge -Value "1" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $DomainProfile -Name DefaultInboundAction -Value "1" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $DomainProfile -Name DefaultOutboundAction -Value "0" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $DomainProfile -Name DisableNotifications -Value "0" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $DomainProfile -Name DisableUnicastResponsesToMulticastBroadcast -Value "0" -PropertyType DWORD -Force | Out-Null
        # Enable firewall
        New-ItemProperty -Path $DomainProfile -Name EnableFirewall -Value "1" -PropertyType DWORD -Force | Out-Null
    }

    # Configure domain profile
    if (!(Test-Path $DomainProfile)) {
        New-Item -Path $DomainProfile -Force | Out-Null
        FirewallDomainProfile
    }
    else {
        FirewallDomainProfile
    }

    function FirewallPrivateProfile {
        New-ItemProperty -Path $PrivateProfile -Name AllowLocalPolicyMerge -Value "1" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $PrivateProfile -Name AllowLocalIPsecPolicyMerge -Value "1" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $PrivateProfile -Name DefaultInboundAction -Value "1" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $PrivateProfile -Name DefaultOutboundAction -Value "0" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $PrivateProfile -Name DisableNotifications -Value "0" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $PrivateProfile -Name DisableUnicastResponsesToMulticastBroadcast -Value "0" -PropertyType DWORD -Force | Out-Null
        # Enable firewall
        New-ItemProperty -Path $PrivateProfile -Name EnableFirewall -Value "1" -PropertyType DWORD -Force | Out-Null
    }

    # Configure private profile
    if (!(Test-Path $PrivateProfile)) {
        New-Item -Path $PrivateProfile -Force | Out-Null
        FirewallPrivateProfile
    }
    else {
        FirewallPrivateProfile
    }

    function FirewallPublicProfile {
        New-ItemProperty -Path $PublicProfile -Name AllowLocalPolicyMerge -Value "1" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $PublicProfile -Name AllowLocalIPsecPolicyMerge -Value "1" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $PublicProfile -Name DefaultInboundAction -Value "1" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $PublicProfile -Name DefaultOutboundAction -Value "0" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $PublicProfile -Name DisableNotifications -Value "0" -PropertyType DWORD -Force | Out-Null
        New-ItemProperty -Path $PublicProfile -Name DisableUnicastResponsesToMulticastBroadcast -Value "0" -PropertyType DWORD -Force | Out-Null
        # Enable firewall
        New-ItemProperty -Path $PublicProfile -Name EnableFirewall -Value "1" -PropertyType DWORD -Force | Out-Null
    }

    # Configure public profile
    if (!(Test-Path $PublicProfile)) {
        New-Item -Path $PublicProfile -Force | Out-Null
        FirewallPublicProfile
    }
    else {
        FirewallPublicProfile
    }

    function FirewallRulesCreation {
        # Allow delivery optimization inbound on local network.
        New-ItemProperty -Path $FirewallRules -Name "DeliveryOptimization-TCP-In" -Value "v2.30|Action=Allow|Active=TRUE|Dir=In|Protocol=6|Profile=Domain|Profile=Private|LPort=7680|RA4=LocalSubnet|RA6=LocalSubnet|App=%SystemRoot%\system32\svchost.exe|Svc=dosvc|Name=@%systemroot%\system32\dosvc.dll,-102|Desc=@%systemroot%\system32\dosvc.dll,-104|EmbedCtxt=@%systemroot%\system32\dosvc.dll,-100|Edge=TRUE|" -PropertyType String -Force | Out-Null
    }

    # Firewall Rules
    if (Test-Path $FirewallRules) {
        FirewallRulesCreation
    }
    else {
        New-Item -Path $FirewallRules -Force | Out-Null
        FirewallRulesCreation
    }

    # Enable firewall logging
    function EnableDomainProfileLogging {
        # Enable logging of dropped packets
        New-ItemProperty -Path $DomainProfileLogging -Name LogDroppedPackets -Value "1" -PropertyType DWORD -Force | Out-Null
        # Set log file location
        New-ItemProperty -Path $DomainProfileLogging -Name LogFilePath -Value "%systemroot%\system32\LogFiles\Firewall\pfirewall.log" -PropertyType String -Force | Out-Null
        # Set log file size
        New-ItemProperty -Path $DomainProfileLogging -Name LogFileSize -Value "4096" -PropertyType DWORD -Force | Out-Null
        # Enable logging of successful connections
        New-ItemProperty -Path $DomainProfileLogging -Name LogSuccessfulConnections -Value "1" -PropertyType DWORD -Force | Out-Null
    }

    # Enable logging for domain profile
    if (!(Test-Path $DomainProfileLogging)) {
        New-Item -Path $DomainProfileLogging -Force | Out-Null
        EnableDomainProfileLogging
    }
    else {
        EnableDomainProfileLogging
    }

    function EnablePrivateProfileLogging {
        # Enable logging of dropped packets
        New-ItemProperty -Path $PrivateProfileLogging -Name LogDroppedPackets -Value "1" -PropertyType DWORD -Force | Out-Null
        # Set log file location
        New-ItemProperty -Path $PrivateProfileLogging -Name LogFilePath -Value "%systemroot%\system32\LogFiles\Firewall\pfirewall.log" -PropertyType String -Force | Out-Null
        # Set log file size
        New-ItemProperty -Path $PrivateProfileLogging -Name LogFileSize -Value "4096" -PropertyType DWORD -Force | Out-Null
        # Enable logging of successful connections
        New-ItemProperty -Path $PrivateProfileLogging -Name LogSuccessfulConnections -Value "1" -PropertyType DWORD -Force | Out-Null
    }

    # Enable logging for private profile
    if (!(Test-Path $PrivateProfileLogging)) {
        New-Item -Path $PrivateProfileLogging -Force | Out-Null
        EnablePrivateProfileLogging
    }
    else {
        EnablePrivateProfileLogging
    }

    function EnablePublicProfileLogging {
        # Enable logging of dropped packets
        New-ItemProperty -Path $PublicProfileLogging -Name LogDroppedPackets -Value "1" -PropertyType DWORD -Force | Out-Null
        # Set log file location
        New-ItemProperty -Path $PublicProfileLogging -Name LogFilePath -Value "%systemroot%\system32\LogFiles\Firewall\pfirewall.log" -PropertyType String -Force | Out-Null
        # Set log file size
        New-ItemProperty -Path $PublicProfileLogging -Name LogFileSize -Value "4096" -PropertyType DWORD -Force | Out-Null
        # Enable logging of successful connections
        New-ItemProperty -Path $PublicProfileLogging -Name LogSuccessfulConnections -Value "1" -PropertyType DWORD -Force | Out-Null
    }

    # Enable logging for public profile
    if (!(Test-Path $PublicProfileLogging)) {
        New-Item -Path $PublicProfileLogging -Force | Out-Null
        EnablePublicProfileLogging
    }
    else {
        EnablePublicProfileLogging
    }

    # Disable local creation of firewall rules
    if (!(Test-Path $FirewallStandardProfile)) {
        New-Item -Path $FirewallStandardProfile -Force | Out-Null
    }

    function DisableLocalApplicationRules {
        New-ItemProperty -Path $FirewallAuthorizedApplications -Name AllowUserPrefMerge -Value "0" -PropertyType DWORD -Force | Out-Null
    }

    # Disable creating local application rules
    if (!(Test-Path $FirewallAuthorizedApplications)) {
        New-Item -Path $FirewallAuthorizedApplications -Force | Out-Null
        DisableLocalApplicationRules
    }
    else {
        DisableLocalApplicationRules
    }

    function DisableLocalPortRules {
        New-ItemProperty -Path $FirewallGloballyOpenPorts -Name AllowUserPrefMerge -Value "0" -PropertyType DWORD -Force | Out-Null
    }

    # Disable creating local port rules
    if (!(Test-Path $FirewallGloballyOpenPorts)) {
        New-Item -Path $FirewallGloballyOpenPorts -Force | Out-Null
        DisableLocalPortRules
    }
    else {
        DisableLocalPortRules
    }
}

function ConfigureFirewallNetworkDiscovery {
    $WindowsFirewall = "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall"
    $FirewallRules = "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\FirewallRules"


    function CreateNetworkDiscoveryRules {
        # Block mdns
        New-ItemProperty -Path $FirewallRules -Name "MDNS-In-UDP" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=17|Profile=Domain|Profile=Private|LPort=5353|RA4=LocalSubnet|RA6=LocalSubnet|App=%SystemRoot%\\system32\\svchost.exe|Svc=dnscache|Name=@%SystemRoot%\\system32\\firewallapi.dll,-37303|Desc=@%SystemRoot%\\system32\\firewallapi.dll,-37304|EmbedCtxt=@%SystemRoot%\\system32\\firewallapi.dll,-37302|" -PropertyType String -Force | Out-Null

        New-ItemProperty -Path $FirewallRules -Name "NETDIS-UPnPHost-In-TCP-Teredo" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=6|App=System|Name=@FirewallAPI.dll,-32762|Desc=@FirewallAPI.dll,-32764|EmbedCtxt=@FirewallAPI.dll,-32752|TTK2_27=UPnP|RA4=LocalSubnet|RA6=LocalSubnet|Profile=Private|Profile=Domain|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "NETDIS-SSDPSrv-In-UDP-Teredo" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=17|App=%SystemRoot%\\system32\\svchost.exe|Svc=Ssdpsrv|Name=@FirewallAPI.dll,-32754|Desc=@FirewallAPI.dll,-32756|EmbedCtxt=@FirewallAPI.dll,-32752|TTK2_27=UPnP|RA4=LocalSubnet|RA6=LocalSubnet|Profile=Private|Profile=Domain|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "NETDIS-WSDEVENT-In-TCP-Active" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=6|Profile=Private|LPort=5357|RA4=LocalSubnet|RA6=LocalSubnet|App=System|Name=@FirewallAPI.dll,-32817|Desc=@FirewallAPI.dll,-32818|EmbedCtxt=@FirewallAPI.dll,-32752|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "NETDIS-WSDEVENTSecure-In-TCP-Active" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=6|Profile=Private|LPort=5358|RA4=LocalSubnet|RA6=LocalSubnet|App=System|Name=@FirewallAPI.dll,-32813|Desc=@FirewallAPI.dll,-32814|EmbedCtxt=@FirewallAPI.dll,-32752|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "NETDIS-FDRESPUB-WSD-In-UDP-Active" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=17|Profile=Private|LPort=3702|RA4=LocalSubnet|RA6=LocalSubnet|App=%SystemRoot%\\system32\\svchost.exe|Svc=fdrespub|Name=@FirewallAPI.dll,-32809|Desc=@FirewallAPI.dll,-32810|EmbedCtxt=@FirewallAPI.dll,-32752|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "NETDIS-LLMNR-In-UDP-Active" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=17|Profile=Private|LPort=5355|RA4=LocalSubnet|RA6=LocalSubnet|App=%SystemRoot%\\system32\\svchost.exe|Svc=dnscache|Name=@FirewallAPI.dll,-32801|Desc=@FirewallAPI.dll,-32804|EmbedCtxt=@FirewallAPI.dll,-32752|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "NETDIS-FDPHOST-In-UDP-Active" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=17|Profile=Private|LPort=3702|RA4=LocalSubnet|RA6=LocalSubnet|App=%SystemRoot%\\system32\\svchost.exe|Svc=fdphost|Name=@FirewallAPI.dll,-32785|Desc=@FirewallAPI.dll,-32788|EmbedCtxt=@FirewallAPI.dll,-32752|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "NETDIS-NB_Datagram-In-UDP-Active" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=17|Profile=Private|LPort=138|RA4=LocalSubnet|RA6=LocalSubnet|App=System|Name=@FirewallAPI.dll,-32777|Desc=@FirewallAPI.dll,-32780|EmbedCtxt=@FirewallAPI.dll,-32752|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "NETDIS-NB_Name-In-UDP-Active" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=17|Profile=Private|LPort=137|RA4=LocalSubnet|RA6=LocalSubnet|App=System|Name=@FirewallAPI.dll,-32769|Desc=@FirewallAPI.dll,-32772|EmbedCtxt=@FirewallAPI.dll,-32752|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "NETDIS-UPnPHost-In-TCP-Active" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=6|Profile=Private|LPort=2869|RA4=LocalSubnet|RA6=LocalSubnet|App=System|Name=@FirewallAPI.dll,-32761|Desc=@FirewallAPI.dll,-32764|EmbedCtxt=@FirewallAPI.dll,-32752|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "NETDIS-SSDPSrv-In-UDP-Active" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=17|Profile=Private|LPort=1900|RA4=LocalSubnet|RA6=LocalSubnet|App=%SystemRoot%\\system32\\svchost.exe|Svc=Ssdpsrv|Name=@FirewallAPI.dll,-32753|Desc=@FirewallAPI.dll,-32756|EmbedCtxt=@FirewallAPI.dll,-32752|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "AllJoyn-Router-In-UDP" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=17|Profile=Domain|Profile=Private|App=%SystemRoot%\\system32\\svchost.exe|Svc=AJRouter|Name=@FirewallAPI.dll,-37007|Desc=@FirewallAPI.dll,-37008|EmbedCtxt=@FirewallAPI.dll,-37002|RA4=LocalSubnet|RA6=LocalSubnet|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "AllJoyn-Router-In-TCP" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=6|Profile=Domain|Profile=Private|LPort=9955|App=%SystemRoot%\\system32\\svchost.exe|Svc=AJRouter|Name=@FirewallAPI.dll,-37003|Desc=@FirewallAPI.dll,-37004|EmbedCtxt=@FirewallAPI.dll,-37002|RA4=LocalSubnet|RA6=LocalSubnet|" -PropertyType String -Force | Out-Null
    }

    # Firewall Rules
    if (Test-Path $FirewallRules) {
        CreateNetworkDiscoveryRules
    }
    else {
        New-Item -Path $FirewallRules -Force | Out-Null
        CreateNetworkDiscoveryRules
    }

}

function ConfigureFirewallCoreNetworking {
    $WindowsFirewall = "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall"
    $FirewallRules = "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\FirewallRules"

    function CreateCoreNetworkingRules {
        New-ItemProperty -Path $FirewallRules -Name "CoreNetworking - IPv6-In" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=41|App=System|Name=@FirewallAPI.dll,-25351|Desc=@FirewallAPI.dll,-25357|EmbedCtxt=@FirewallAPI.dll,-25000|RA4=LocalSubnet|RA6=LocalSubnet|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "CoreNetworking -IPHTTPS-In" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=6|LPort2_10=IPTLSIn|LPort2_10=IPHTTPSIn|App=System|Name=@FirewallAPI.dll,-25426|Desc=@FirewallAPI.dll,-25428|EmbedCtxt=@FirewallAPI.dll,-25000|RA4=LocalSubnet|RA6=LocalSubnet|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "CoreNet-Teredo-In" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=17|LPort=Teredo|App=%SystemRoot%\\system32\\svchost.exe|Svc=iphlpsvc|Name=@FirewallAPI.dll,-25326|Desc=@FirewallAPI.dll,-25332|EmbedCtxt=@FirewallAPI.dll,-25000|RA4=LocalSubnet|RA6=LocalSubnet|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "CoreNet-DHCPV6-In" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=17|LPort=546|RPort=547|App=%SystemRoot%\\system32\\svchost.exe|Svc=dhcp|Name=@FirewallAPI.dll,-25304|Desc=@FirewallAPI.dll,-25306|EmbedCtxt=@FirewallAPI.dll,-25000|RA4=LocalSubnet|RA6=LocalSubnet|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "CoreNet-DHCP-In" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=17|LPort=68|RPort=67|App=%SystemRoot%\\system32\\svchost.exe|Svc=dhcp|Name=@FirewallAPI.dll,-25301|Desc=@FirewallAPI.dll,-25303|EmbedCtxt=@FirewallAPI.dll,-25000|RA4=LocalSubnet|RA6=LocalSubnet|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "CoreNet-IGMP-In" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=2|App=System|Name=@FirewallAPI.dll,-25376|Desc=@FirewallAPI.dll,-25382|EmbedCtxt=@FirewallAPI.dll,-25000|RA4=LocalSubnet|RA6=LocalSubnet|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "CoreNet-ICMP4-DUFRAG-In" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=1|ICMP4=3:4|App=System|Name=@FirewallAPI.dll,-25251|Desc=@FirewallAPI.dll,-25257|EmbedCtxt=@FirewallAPI.dll,-25000|RA4=LocalSubnet|RA6=LocalSubnet|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "CoreNet-ICMP6-LD-In" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=58|ICMP6=132:*|RA6=LocalSubnet|App=System|Name=@FirewallAPI.dll,-25082|Desc=@FirewallAPI.dll,-25088|EmbedCtxt=@FirewallAPI.dll,-25000|RA4=LocalSubnet|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "CoreNet-ICMP6-LR2-In" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=58|ICMP6=143:*|RA6=LocalSubnet|App=System|Name=@FirewallAPI.dll,-25075|Desc=@FirewallAPI.dll,-25081|EmbedCtxt=@FirewallAPI.dll,-25000|RA4=LocalSubnet|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "CoreNet-ICMP6-LR-In" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=58|ICMP6=131:*|RA6=LocalSubnet|App=System|Name=@FirewallAPI.dll,-25068|Desc=@FirewallAPI.dll,-25074|EmbedCtxt=@FirewallAPI.dll,-25000|RA4=LocalSubnet|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "CoreNet-ICMP6-LQ-In" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=58|ICMP6=130:*|RA6=LocalSubnet|App=System|Name=@FirewallAPI.dll,-25061|Desc=@FirewallAPI.dll,-25067|EmbedCtxt=@FirewallAPI.dll,-25000|RA4=LocalSubnet|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "CoreNet-ICMP6-RS-In" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=58|ICMP6=133:*|App=System|Name=@FirewallAPI.dll,-25009|Desc=@FirewallAPI.dll,-25011|EmbedCtxt=@FirewallAPI.dll,-25000|RA4=LocalSubnet|RA6=LocalSubnet|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "CoreNet-ICMP6-RA-In" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=58|ICMP6=134:*|RA6=fe80::/64|App=System|Name=@FirewallAPI.dll,-25012|Desc=@FirewallAPI.dll,-25018|EmbedCtxt=@FirewallAPI.dll,-25000|RA4=LocalSubnet|RA6=LocalSubnet|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "CoreNet-ICMP6-NDA-In" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=58|ICMP6=136:*|App=System|Name=@FirewallAPI.dll,-25026|Desc=@FirewallAPI.dll,-25032|EmbedCtxt=@FirewallAPI.dll,-25000|Edge=TRUE|RA4=LocalSubnet|RA6=LocalSubnet|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "CoreNet-ICMP6-NDS-In" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=58|ICMP6=135:*|App=System|Name=@FirewallAPI.dll,-25019|Desc=@FirewallAPI.dll,-25025|EmbedCtxt=@FirewallAPI.dll,-25000|Edge=TRUE|RA4=LocalSubnet|RA6=LocalSubnet|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "CoreNet-ICMP6-PP-In" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=58|ICMP6=4:*|App=System|Name=@FirewallAPI.dll,-25116|Desc=@FirewallAPI.dll,-25118|EmbedCtxt=@FirewallAPI.dll,-25000|Edge=TRUE|RA4=LocalSubnet|RA6=LocalSubnet|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "CoreNet-ICMP6-TE-In" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=58|ICMP6=3:*|App=System|Name=@FirewallAPI.dll,-25113|Desc=@FirewallAPI.dll,-25115|EmbedCtxt=@FirewallAPI.dll,-25000|Edge=TRUE|RA4=LocalSubnet|RA6=LocalSubnet|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "CoreNet-ICMP6-PTB-In" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=58|ICMP6=2:*|App=System|Name=@FirewallAPI.dll,-25001|Desc=@FirewallAPI.dll,-25007|EmbedCtxt=@FirewallAPI.dll,-25000|Edge=TRUE|RA4=LocalSubnet|RA6=LocalSubnet|" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $FirewallRules -Name "CoreNet-ICMP6-DU-In" -Value "v2.30|Action=Block|Active=TRUE|Dir=In|Protocol=58|ICMP6=1:*|App=System|Name=@FirewallAPI.dll,-25110|Desc=@FirewallAPI.dll,-25112|EmbedCtxt=@FirewallAPI.dll,-25000|Edge=TRUE|RA4=LocalSubnet|RA6=LocalSubnet|" -PropertyType String -Force | Out-Null
    }

    # Firewall Rules
    if (Test-Path $FirewallRules) {
        CreateCoreNetworkingRules
    }
    else {
        New-Item -Path $FirewallRules -Force | Out-Null
        CreateCoreNetworkingRules
    }

}
