<#PSScriptInfo
.VERSION 1.0.0
.GUID dca596de-c24c-4600-bca8-9897d60c41c3
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
        Import a PFX into the 'Root' Local Machine certificate store using
        an administrator credential. The password in the Credential parameter
        is used to decrypt the PFX file and the PsDscRunAsCredential is the
        account that is used to import the certificate and private key into
        Local Machine store. The PsDscRunAsCredential must have permission
        to import the certificate and private key.
#>
Configuration PfxImport_InstallPFXAdministrator_Config"
{
    param
    (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullorEmpty()]
        [System.Management.Automation.PSCredential]
        $Credential,

        [Parameter(Mandatory = $true)]
        [ValidateNotNullorEmpty()]
        [System.Management.Automation.PSCredential]
        $AdminCredential
    )

    Import-DscResource -ModuleName CertificateDsc

    Node localhost
    {
        PfxImport CompanyCert
        {
            Thumbprint           = 'c81b94933420221a7ac004a90242d8b1d3e5070d'
            Path                 = '\\Server\Share\Certificates\CompanyCert.pfx'
            Location             = 'LocalMachine'
            Store                = 'Root'
            Credential           = $Credential
            PsDscRunAsCredential = $AdminCredential
        }
    }
}
