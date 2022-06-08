<#PSScriptInfo

.VERSION 1.0.0

.GUID 6b985cf2-8c93-47d7-9b90-31b28ec5147d

.AUTHOR DSC Community

.COMPANYNAME DSC Community

.COPYRIGHT DSC Community contributors. All rights reserved.

.TAGS DSCConfiguration

.LICENSEURI https://github.com/dsccommunity/DnsServerDsc/blob/main/LICENSE

.PROJECTURI https://github.com/dsccommunity/DnsServerDsc

.ICONURI https://dsccommunity.org/images/DSC_Logo_300p.png

.EXTERNALMODULEDEPENDENCIES

.REQUIREDSCRIPTS

.EXTERNALSCRIPTDEPENDENCIES

.RELEASENOTES
Updated author, copyright notice, and URLs.

.PRIVATEDATA 2016-Datacenter,2016-Datacenter-Server-Core

#>

#Requires -Module DnsServerDsc

<#
    .DESCRIPTION
        This configuration will disable scavenging on the DNS server.
#>

Configuration DnsServerScavenging_DisableScavenging_Config"
{
    Import-DscResource -ModuleName 'DnsServerDsc'

    Node localhost
    {
        DnsServerScavenging 'DisableScavenging'
        {
            DnsServer       = 'localhost'
            ScavengingState = $false
        }
    }
}
