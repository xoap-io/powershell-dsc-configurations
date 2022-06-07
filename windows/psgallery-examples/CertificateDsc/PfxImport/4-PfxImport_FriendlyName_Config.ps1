<#PSScriptInfo
.VERSION 1.0.0
.GUID e6ffca90-8b17-416e-a5ee-c78d4622329f
.AUTHOR DSC Community
.COMPANYNAME DSC Community
.COPYRIGHT Copyright the DSC Community contributors. All rights reserved.
.TAGS DSCConfiguration
.LICENSEURI https://github.com/dsccommunity/CertificateDsc/blob/main/LICENSE
.PROJECTURI https://github.com/dsccommunity/CertificateDsc
.ICONURI
.EXTERNALMODULEDEPENDENCIES
.REQUIREDSCRIPTS
.EXTERNALSCRIPTDEPENDENCIES
.RELEASENOTES First version.
.PRIVATEDATA 2016-Datacenter,2016-Datacenter-Server-Core
#>

#Requires -Modules CertificateDsc

<#
    .DESCRIPTION
        Import a PFX into the 'My' Local Machine certificate store and
        set the Fiendly Name to 'Web Site Certificate'.
#>
Configuration PfxImport_FriendlyName_Config"
{
    param
    (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullorEmpty()]
        [System.Management.Automation.PSCredential]
        $Credential
    )

    Import-DscResource -ModuleName CertificateDsc

    Node localhost
    {
        PfxImport CompanyCert
        {
            Thumbprint   = 'c81b94933420221a7ac004a90242d8b1d3e5070d'
            Path         = '\\Server\Share\Certificates\CompanyCert.pfx'
            Location     = 'LocalMachine'
            Store        = 'My'
            Credential   = $Credential
            FriendlyName = 'Web Site Certificate'
        }
    }
}
