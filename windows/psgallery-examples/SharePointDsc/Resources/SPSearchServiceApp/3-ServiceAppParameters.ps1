
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
 This example creates a new search service app in the local farm

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
        SPSearchServiceApp SearchServiceApp
        {
            Name                       = "Search Service Application"
            DatabaseName               = "SP_Search"
            ApplicationPool            = "SharePoint Service Applications"
            ProxyName                  = "Search Service Application Proxy"
            SearchCenterUrl            = "https://intranet.contoso.com/sites/search"
            AlertsEnabled              = $true
            ErrorDeleteCountAllowed    = 10
            ErrorDeleteIntervalAllowed = 240
            ErrorCountAllowed          = 15
            ErrorIntervalAllowed       = 360
            DeleteUnvisitedMethod      = 1
            RecrawlErrorCount          = 5
            RecrawlErrorInterval       = 120
            Ensure                     = "Present"
            PsDscRunAsCredential       = $SetupAccount
        }
    }
}
