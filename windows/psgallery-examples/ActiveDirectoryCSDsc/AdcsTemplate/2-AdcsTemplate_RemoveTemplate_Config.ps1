<#PSScriptInfo
.VERSION 1.0.0
.GUID ddda54a8-0c1c-437b-b14a-371f39e7fd95
.AUTHOR DSC Community
.COMPANYNAME DSC Community
.COPYRIGHT DSC Community contributors. All rights reserved.
.TAGS DSCConfiguration
.LICENSEURI https://github.com/dsccommunity/ActiveDirectoryCSDsc/blob/main/LICENSE
.PROJECTURI https://github.com/dsccommunity/ActiveDirectoryCSDsc
.ICONURI
.EXTERNALMODULEDEPENDENCIES
.REQUIREDSCRIPTS
.EXTERNALSCRIPTDEPENDENCIES
.RELEASENOTES First version.
.PRIVATEDATA 2016-Datacenter,2016-Datacenter-Server-Core
#>

#Requires -module ActiveDirectoryCSDsc

<#
    .DESCRIPTION
        This example will remove the DomainController CA Template from the server.
#>
Configuration AdcsTemplate_RemoveTemplate_Config"
{
    Import-DscResource -Module ActiveDirectoryCSDsc

    Node localhost
    {
        AdcsTemplate DomainController
        {
            Name   = 'DomainController'
            Ensure = 'Absent'
        }
    }
}
