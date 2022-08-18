function Get-VMReport {
    [CmdletBinding()]
    param(
        [parameter(ValueFromPipeline)][Array]$InputObject
    )

    process {
        [vmware]::VMReport($InputObject)
    }
}