
<#PSScriptInfo

.VERSION 1.0.0

.GUID 80d306fa-8bd4-4a8d-9f7a-bf40df95e661

.AUTHOR DSC Community

.COMPANYNAME DSC Community

.COPYRIGHT DSC Community contributors. All rights reserved.

.TAGS

.LICENSEURI https://github.com/dsccommunity/SharePointDsc/blob/master/LICENSE

.PROJECTURI https://github.com/dsccommunity/SharePointDsc

.ICONURI https://dsccommunity.org/images/DSC_Logo_300p.png

.EXTERNALMODULEDEPENDENCIES

.REQUIREDSCRIPTS

.EXTERNALSCRIPTDEPENDENCIES

.RELEASENOTES
Updated author, copyright notice, and URLs.

.PRIVATEDATA

#>

<#

.DESCRIPTION
 This module will install the prerequisites for SharePoint 2016/2019. This resource will run in
 offline mode, running all prerequisite installations from the specified paths.

#>

Configuration Example"
{
    param
    (
        [Parameter(Mandatory = $true)]
        [PSCredential]
        $SetupAccount
    )

    Import-DscResource -ModuleName SharePointDsc

    node localhost
    {
        SPInstallPrereqs 'InstallPrerequisites2019'
        {
            IsSingleInstance  = "Yes"
            InstallerPath     = "C:\SPInstall\Prerequisiteinstaller.exe"
            OnlineMode        = $false
            SXSpath           = "C:\SPInstall\Windows2012r2-SXS"
            AppFabric         = 'C:\SPInstall\prerequisiteinstallerfiles\WindowsServerAppFabricSetup_x64.exe'
            DotNet472         = 'C:\SPInstall\prerequisiteinstallerfiles\NDP472-KB4054530-x86-x64-AllOS-ENU.exe'
            KB3092423         = 'C:\SPInstall\prerequisiteinstallerfiles\AppFabric-KB3092423-x64-ENU.exe'
            IDFX11            = 'C:\SPInstall\prerequisiteinstallerfiles\MicrosoftIdentityExtensions-64.msi'
            MSIPCClient       = 'C:\SPInstall\prerequisiteinstallerfiles\setup_msipc_x64.exe'
            MSVCRT11          = 'C:\SPInstall\prerequisiteinstallerfiles\vcredist_x64.exe'
            MSVCRT141         = 'C:\SPInstall\prerequisiteinstallerfiles\vc_redist.x64.exe'
            SQLNCli           = 'C:\SPInstall\prerequisiteinstallerfiles\sqlncli.msi'
            Sync              = 'C:\SPInstall\prerequisiteinstallerfiles\Synchronization.msi'
            WCFDataServices56 = 'C:\SPInstall\prerequisiteinstallerfiles\WcfDataServices.exe'
        }
    }
}
