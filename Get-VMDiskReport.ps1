function Get-VMReport {
    [CmdletBinding()]
    param(
        [parameter(ValueFromPipeline)]$InputObject
    )
    begin {
        $Return = [System.Collections.ArrayList]::new()
    }
    process {
        $Vm = [System.Collections.ArrayList]::new()
        $InputObject | ForEach-Object {
            for ($i = 0; $i -lt $_.ExtensionData.Guest.disk.count ) {
                $cap = $_.ExtensionData.Guest.disk[$i].capacity / 1GB
                $free = $_.ExtensionData.Guest.disk[$i].freeSpace / 1GB
                $storpolicy = Get-HardDisk -VM $_ -Name "Hard disk $($i + 1)" -ErrorAction SilentlyContinue | Get-SpbmEntityConfiguration 
                $o = [PSCustomObject]@{
                    Name          = $_.name
                    DriveLetter   = $_.ExtensionData.Guest.disk[$i].diskPath
                    Capacity      = [math]::Round($Cap, 0)
                    Used          = [math]::Round(($cap - $Free), 0)
                    FreeSpace     = [math]::Round($free, 0)
                    StoragePolicy = if ($storpolicy.StoragePolicy.count -gt 0) { $storpolicy.StoragePolicy } else { "No Storage Policy or Disk is Partitioned" }
                }
                $Vm.Add($o) | Out-Null
                $i++
            }
        }
        $Return.Add($Vm) | Out-Null
    }
    end {
        return $Return
    }
}