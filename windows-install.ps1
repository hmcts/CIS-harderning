#install latest version of powershell
Invoke-Expression "& { $(Invoke-RestMethod 'https://aka.ms/install-powershell.ps1') } -useMSI -EnablePSRemoting -Quiet -force" 

invoke-expression 'cmd /c start pwsh.exe -Command {
#Uninstall modules if exist to avoid conflict with older version of Powershell
Uninstall-Module -Name PSDesiredStateConfiguration -force
Uninstall-Module -Name AuditPolicyDsc -force
Uninstall-Module -Name SecurityPolicyDsc -force
Uninstall-Module -Name NetworkingDsc -force



#intall required packages and modules
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -force
Install-Module -Name AuditPolicyDsc -force
Install-Module -Name SecurityPolicyDsc -force
Install-Module -Name NetworkingDsc -force
Install-Module -Name PSDesiredStateConfiguration -force }'