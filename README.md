### VMWare

A few functions I've put together the make reporting on VMWare VM's a bit easier to read
All functions accept pipeline input
#### Get-VMReport

    Get-VM | Get-VMReport

```
Name                            NumCPU MemoryGB ProvisionedSpaceGB UsedSpaceGB Guest                                                     PowerState VMHost
----                            ------ -------- ------------------ ----------- -----                                                     ---------- ------
VMware vCenter Server Appliance 2      10                      290         290 VMware vCenter Server Appliance:VMware Photon OS (64-bit) PoweredOn  host02.lab.company
Lab-DC01                        2      4                        44          44 Lab-DC01:                                                 PoweredOn  host01.lab.company
Server                          2      4                        44          40 Server:                                                   PoweredOff host01.lab.company
```

#### Get-VMDiskReport
```
Name                            DriveLetter                                                                                   Capacity Used FreeSpace StoragePolicy
----                            -----------                                                                                   -------- ---- --------- -------------
VMware vCenter Server Appliance /                                                                                                   11    6         4 No Storage Policy or Disk is Partitioned
VMware vCenter Server Appliance /storage/netdump                                                                                     1    0         1 No Storage Policy or Disk is Partitioned
VMware vCenter Server Appliance /storage/autodeploy                                                                                 10    1         9 No Storage Policy or Disk is Partitioned
VMware vCenter Server Appliance /storage/log                                                                                        10    3         6 No Storage Policy or Disk is Partitioned
VMware vCenter Server Appliance /storage/dblog                                                                                      15    1        14 No Storage Policy or Disk is Partitioned
VMware vCenter Server Appliance /storage/core                                                                                       24    1        23 No Storage Policy or Disk is Partitioned
VMware vCenter Server Appliance /storage/imagebuilder                                                                               10    1         9 No Storage Policy or Disk is Partitioned
VMware vCenter Server Appliance /storage/archive                                                                                    49   10        39 No Storage Policy or Disk is Partitioned
VMware vCenter Server Appliance /storage/updatemgr                                                                                  98    5        93 No Storage Policy or Disk is Partitioned
VMware vCenter Server Appliance /boot                                                                                                0    0         0 No Storage Policy or Disk is Partitioned
VMware vCenter Server Appliance /storage/db                                                                                         10    1         9 No Storage Policy or Disk is Partitioned
VMware vCenter Server Appliance /storage/seat                                                                                       10    1         9 No Storage Policy or Disk is Partitioned
```