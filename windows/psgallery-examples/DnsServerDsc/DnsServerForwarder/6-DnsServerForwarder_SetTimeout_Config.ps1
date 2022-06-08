<#PSScriptInfo

.VERSION 1.0.0

.GUID c2230aa1-dd2b-4083-ae0a-eeec48a01e72

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
        This configuration will set the DNS forwarders and disable dynamic reordering.
#>

Configuration DnsServerForwarder_SetTimeout_Config"
{
    Import-DscResource -ModuleName 'DnsServerDsc'

    Node localhost
    {
        DnsServerForwarder 'SetUseRootHints'
        {
            IsSingleInstance = 'Yes'
            IPAddresses      = @('192.168.0.10', '192.168.0.11')
            UseRootHint      = $false
            Timeout          = 10
        }
    }
}
