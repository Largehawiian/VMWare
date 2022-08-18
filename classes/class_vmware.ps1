class vmware {
    [string]$Name
    [string]$NumCPU
    [String]$MemoryGB
    [int]$ProvisionedSpaceGB
    [int]$UsedSpaceGB
    [String]$Guest
    [String]$PowerState
    [String]$VMHost

    vmare () {}

    vmware ($Name, $NumCPU, $MemoryGB, $ProvisionedSpaceGB, $UsedSpaceGB, $Guest, $PowerState, $VMHost) {
        $this.name = $Name
        $this.NumCPU = $NumCPU
        $this.MemoryGB = $MemoryGB
        $this.ProvisionedSpaceGB = $ProvisionedSpaceGB
        $this.UsedSpaceGB = $UsedSpaceGB
        $this.Guest = $Guest
        $this.PowerState = $PowerState
        $this.VMhost = $VMHost
    }

    static [vmware]VMReport ($InputObject) {
        return [vmware]::new($InputObject.Name, $InputObject.NumCPU, $InputObject.MemoryGB, $InputObject.ProvisionedSpaceGB, $InputObject.UsedSpaceGB, $InputObject.Guest, $InputObject.PowerState, $InputObject.VMhost.Name)
    }
}