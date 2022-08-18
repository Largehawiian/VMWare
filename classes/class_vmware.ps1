class vmware {
    [string]$Name
    [string]$NumCPU
    [String]$MemoryGB
    [String]$Guest
    [String]$PowerState
    [int]$ProvisionedSpaceGB
    [int]$UsedSpaceGB
    [String]$VMHost

    vmare () {}

    vmware ($Name, $NumCPU, $MemoryGB, $Guest, $PowerState, $ProvisionedSpaceGB, $UsedSpaceGB, $VMHost){
        $this.name = $Name
        $this.NumCPU = $NumCPU
        $this.MemoryGB = $MemoryGB
        $this.Guest = $Guest
        $this.PowerState = $PowerState
        $this.ProvisionedSpaceGB = $ProvisionedSpaceGB
        $this.UsedSpaceGB = $UsedSpaceGB
        $this.VMhost = $VMHost
    }

    static [vmware]VMReport ($InputObject){
        return [vmware]::new($InputObject.Name, $InputObject.NumCPU, $InputObject.MemoryGB, $InputObject.Guest, $InputObject.PowerState, $InputObject.ProvisionedSpaceGB, $InputObject.UsedSpaceGB, $InputObject.VMhost.Name)
    }
}