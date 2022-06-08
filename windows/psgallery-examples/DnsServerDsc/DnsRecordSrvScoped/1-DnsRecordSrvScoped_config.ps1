<#PSScriptInfo

.VERSION 1.0.1

.GUID 0292973b-1c0d-4738-983b-d1e08f00b718

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
        This configuration will ensure a DNS SRV record exists
        in the external scope for XMPP that points to
        chat.contoso.com with a priority of 10, weight of 20.
#>

Configuration DnsRecordSrvScoped_config"
{
    Import-DscResource -ModuleName 'DnsServerDsc'

    Node localhost
    {
        DnsRecordSrvScoped 'TestRecord'
        {
            ZoneName     = 'contoso.com'
            ZoneScope    = 'external'
            SymbolicName = 'xmpp'
            Protocol     = 'tcp'
            Port         = 5222
            Target       = 'chat.contoso.com'
            Priority     = 10
            Weight       = 20
            Ensure       = 'Present'
        }
    }
}
