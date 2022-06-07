<#PSScriptInfo

.VERSION 1.0.0

.GUID f148c0eb-fb6e-4c31-bccb-5ed304545b0d

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
        This configuration will change scavenging intervals on the DNS server, but
        does not enforce that scavenging is enabled.
#>

Configuration DnsServerScavenging_ChangeScavengingIntervals_Config"
{
    Import-DscResource -ModuleName 'DnsServerDsc'

    Node localhost
    {
        DnsServerScavenging 'ChangeScavengingIntervals'
        {
            DnsServer          = 'localhost'
            ScavengingInterval = '7.00:00:00'
            RefreshInterval    = '7.00:00:00'
            NoRefreshInterval  = '7.00:00:00'
        }
    }
}
