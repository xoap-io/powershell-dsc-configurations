
<#PSScriptInfo

.VERSION 1.2.0

.GUID 80d306fa-8bd4-4a8d-9f7a-bf40df95e661

.AUTHOR DSC Community

.COMPANYNAME DSC Community

.COPYRIGHT DSC Community contributors. All rights reserved.

.TAGS

.LICENSEURI https://github.com/dsccommunity/SChannelDsc/blob/master/LICENSE

.PROJECTURI https://github.com/dsccommunity/SChannelDsc

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
 This example shows how to configure a secure Windows Server 2016 cipher
 suites order.

#>

    Configuration Example
    {
        param(
        )

        Import-DscResource -ModuleName SChannelDsc

        node localhost {
            CipherSuites ConfigureCipherSuites
            {
                IsSingleInstance  = 'Yes'
                CipherSuitesOrder = @('TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384','TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256','TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384','TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256','TLS_DHE_RSA_WITH_AES_256_GCM_SHA384','TLS_DHE_RSA_WITH_AES_128_GCM_SHA256','TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384','TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256','TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384','TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256','TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA','TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA','TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA','TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA','TLS_DHE_RSA_WITH_AES_256_CBC_SHA','TLS_DHE_RSA_WITH_AES_128_CBC_SHA','TLS_RSA_WITH_AES_256_GCM_SHA384','TLS_RSA_WITH_AES_128_GCM_SHA256','TLS_RSA_WITH_AES_256_CBC_SHA256','TLS_RSA_WITH_AES_128_CBC_SHA256','TLS_RSA_WITH_AES_256_CBC_SHA','TLS_RSA_WITH_AES_128_CBC_SHA','TLS_RSA_WITH_3DES_EDE_CBC_SHA','TLS_DHE_DSS_WITH_AES_256_CBC_SHA256','TLS_DHE_DSS_WITH_AES_128_CBC_SHA256','TLS_DHE_DSS_WITH_AES_256_CBC_SHA','TLS_DHE_DSS_WITH_AES_128_CBC_SHA','TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA','TLS_PSK_WITH_AES_256_GCM_SHA384','TLS_PSK_WITH_AES_128_GCM_SHA256','TLS_PSK_WITH_AES_256_CBC_SHA384','TLS_PSK_WITH_AES_128_CBC_SHA256''TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384','TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256','TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384','TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256','TLS_DHE_RSA_WITH_AES_256_GCM_SHA384','TLS_DHE_RSA_WITH_AES_128_GCM_SHA256','TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384','TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256','TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384','TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256','TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA','TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA','TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA','TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA','TLS_DHE_RSA_WITH_AES_256_CBC_SHA','TLS_DHE_RSA_WITH_AES_128_CBC_SHA','TLS_RSA_WITH_AES_256_GCM_SHA384','TLS_RSA_WITH_AES_128_GCM_SHA256','TLS_RSA_WITH_AES_256_CBC_SHA256','TLS_RSA_WITH_AES_128_CBC_SHA256','TLS_RSA_WITH_AES_256_CBC_SHA','TLS_RSA_WITH_AES_128_CBC_SHA','TLS_RSA_WITH_3DES_EDE_CBC_SHA','TLS_DHE_DSS_WITH_AES_256_CBC_SHA256','TLS_DHE_DSS_WITH_AES_128_CBC_SHA256','TLS_DHE_DSS_WITH_AES_256_CBC_SHA','TLS_DHE_DSS_WITH_AES_128_CBC_SHA','TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA','TLS_PSK_WITH_AES_256_GCM_SHA384','TLS_PSK_WITH_AES_128_GCM_SHA256','TLS_PSK_WITH_AES_256_CBC_SHA384','TLS_PSK_WITH_AES_128_CBC_SHA256')
                Ensure            = "Present"
            }
        }
    }
