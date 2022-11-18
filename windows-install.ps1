#install latest version of powershell
Invoke-Expression "& { $(Invoke-RestMethod 'https://aka.ms/install-powershell.ps1') } -useMSI -EnablePSRemoting -Quiet" 





#intall required packages and modules
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -force
Install-Module -Name AuditPolicyDsc -force
Install-Module -Name SecurityPolicyDsc -force
Install-Module -Name NetworkingDsc -force
Install-Module -Name PSDesiredStateConfiguration -force 