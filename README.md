# CIS-harderning

**Make sure you install powershell 7 in order to run the CIS hardening scripts, below are the automation script to install from the choclatey.**

# Install choco
```shell
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```
# Install choco powershell packages
```shell
choco install powershell-core -y
```

First step - insall powershell script windows-install.ps1 to install packages and module needed to run the CIS hardening script.

Second step - install windows2019.ps1 sctipt, this will create folder CIS_Benchmark_WindowsServer2019_v100 and you should then able to run below last step.

Last step - run this powershell command 
```shell
Start-DscConfiguration -Path .\CIS_Benchmark_WindowsServer2019_v100  -Force -Verbose -Wait
```
