<#
    .DESCRIPTION
        This example will remove an Database Mirror endpoint from two instances.
#>
Configuration Example"
{
    param
    (
        [Parameter(Mandatory = $true)]
        [System.Management.Automation.PSCredential]
        $SqlAdministratorCredential
    )

    Import-DscResource -ModuleName 'SqlServerDsc'

    node localhost
    {
        SqlEndpoint 'SQLConfigureEndpoint-Instance1'
        {
            Ensure               = 'Absent'

            EndpointName         = 'HADR'
            EndpointType         = 'DatabaseMirroring'
            InstanceName         = 'INST1'

            PsDscRunAsCredential = $SqlAdministratorCredential
        }

        SqlEndpoint 'SQLConfigureEndpoint-Instance2'
        {
            Ensure               = 'Absent'

            EndpointName         = 'HADR'
            EndpointType         = 'DatabaseMirroring'
            InstanceName         = 'INST2'

            PsDscRunAsCredential = $SqlAdministratorCredential
        }
    }
}
