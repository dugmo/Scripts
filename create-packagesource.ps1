<#
Updated:     2018-06-05 by Doug Seiler

Edits:       Package source set to C: drive and Network Account set to CORP\CM_NetAcc

Usage:       $Account is account name.  $TargetOU is name of the OU and will be placed in the CORP OU.

Author: Odd-Magne Kristoffersen
Source: https://sccmguru.wordpress.com/2012/10/25/configuration-manager-folder-structure/    

#>

#Set the Following Parameters
$Source = 'C:\PackageSource'
$ShareName = 'PackageSource'
$NetworkAccount = 'CORP\CM_NetAcc'

#Create Source Directory
New-Item -ItemType Directory -Path "$Source"


#Create Application Directory Structure
New-Item -ItemType Directory -Path "$Source\Applications"
New-Item -ItemType Directory -Path "$Source\Applications\Adobe"
New-Item -ItemType Directory -Path "$Source\Applications\Apple"
New-Item -ItemType Directory -Path "$Source\Applications\Citrix"
New-Item -ItemType Directory -Path "$Source\Applications\Microsoft"

#Create App-V Directory Structure
New-Item -ItemType Directory -Path "$Source\App-V"
New-Item -ItemType Directory -Path "$Source\App-V\Packages"
New-Item -ItemType Directory -Path "$Source\App-V\Source"

#Create Hardware Application Directory Structure
New-Item -ItemType Directory -Path "$Source\HardwareApplications"
New-Item -ItemType Directory -Path "$Source\HardwareApplications\Dell"
New-Item -ItemType Directory -Path "$Source\HardwareApplications\Dell\Latitude E6510"
New-Item -ItemType Directory -Path "$Source\HardwareApplications\Dell\Latitude E6510\x86"
New-Item -ItemType Directory -Path "$Source\HardwareApplications\Dell\Latitude E6510\x64"
New-Item -ItemType Directory -Path "$Source\HardwareApplications\HP"
New-Item -ItemType Directory -Path "$Source\HardwareApplications\HP\EliteBook 8470p"
New-Item -ItemType Directory -Path "$Source\HardwareApplications\HP\EliteBook 8470p\x86"
New-Item -ItemType Directory -Path "$Source\HardwareApplications\HP\EliteBook 8470p\x64"
New-Item -ItemType Directory -Path "$Source\HardwareApplications\Lenovo"
New-Item -ItemType Directory -Path "$Source\HardwareApplications\Lenovo\X1 Carbon"
New-Item -ItemType Directory -Path "$Source\HardwareApplications\Lenovo\X1 Carbon\x86"
New-Item -ItemType Directory -Path "$Source\HardwareApplications\Lenovo\X1 Carbon\x64"

#Create Hotfix Directory Structure
New-Item -ItemType Directory -Path "$Source\Hotfix"

#Create Import Directory Structure
New-Item -ItemType Directory -Path "$Source\Import"
New-Item -ItemType Directory -Path "$Source\Import\Baselines"
New-Item -ItemType Directory -Path "$Source\Import\MOFs"
New-Item -ItemType Directory -Path "$Source\Import\Task Sequences"

#Create Log Directory Structure
New-Item -ItemType Directory -Path "$Source\Logs"
New-Item -ItemType Directory -Path "$Source\Logs\MDTLogs"
New-Item -ItemType Directory -Path "$Source\Logs\MDTLogsDL"

#Create OSD Directory Structure
New-Item -ItemType Directory -Path "$Source\OSD"
New-Item -ItemType Directory -Path "$Source\OSD\BootImages"
New-Item -ItemType Directory -Path "$Source\OSD\Branding"
New-Item -ItemType Directory -Path "$Source\OSD\Branding\WinPE Background"
New-Item -ItemType Directory -Path "$Source\OSD\Captures"
New-Item -ItemType Directory -Path "$Source\OSD\DriverPackages"
New-Item -ItemType Directory -Path "$Source\OSD\DriverPackages\Windows 7 x86"
New-Item -ItemType Directory -Path "$Source\OSD\DriverPackages\Windows 7 x86\Dell"
New-Item -ItemType Directory -Path "$Source\OSD\DriverPackages\Windows 7 x86\HP"
New-Item -ItemType Directory -Path "$Source\OSD\DriverPackages\Windows 7 x86\Lenovo"
New-Item -ItemType Directory -Path "$Source\OSD\DriverPackages\Windows 7 x86\VMWare"
New-Item -ItemType Directory -Path "$Source\OSD\DriverPackages\Windows 7 x64"
New-Item -ItemType Directory -Path "$Source\OSD\DriverPackages\Windows 7 x64\Dell"
New-Item -ItemType Directory -Path "$Source\OSD\DriverPackages\Windows 7 x64\HP"
New-Item -ItemType Directory -Path "$Source\OSD\DriverPackages\Windows 7 x64\Lenovo"
New-Item -ItemType Directory -Path "$Source\OSD\DriverPackages\Windows 7 x64\VMWare"
New-Item -ItemType Directory -Path "$Source\OSD\DriverPackages\Windows 8 x64"
New-Item -ItemType Directory -Path "$Source\OSD\DriverPackages\Windows 8 x64\Dell"
New-Item -ItemType Directory -Path "$Source\OSD\DriverPackages\Windows 8 x64\HP"
New-Item -ItemType Directory -Path "$Source\OSD\DriverPackages\Windows 8 x64\Lenovo"
New-Item -ItemType Directory -Path "$Source\OSD\DriverPackages\Windows 8 x64\VMWare"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources\Windows 7 x86"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources\Windows 7 x86\Dell"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources\Windows 7 x86\HP"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources\Windows 7 x86\Lenovo"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources\Windows 7 x86\VMWare"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources\Windows 7 x64"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources\Windows 7 x64\Dell"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources\Windows 7 x64\HP"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources\Windows 7 x64\Lenovo"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources\Windows 7 x64\VMWare"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources\Windows 8 x64"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources\Windows 8 x64\Dell"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources\Windows 8 x64\HP"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources\Windows 8 x64\Lenovo"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources\Windows 8 x64\VMWare"
New-Item -ItemType Directory -Path "$Source\OSD\MDTSettings"
New-Item -ItemType Directory -Path "$Source\OSD\MDTToolkit"
New-Item -ItemType Directory -Path "$Source\OSD\OSImages"
New-Item -ItemType Directory -Path "$Source\OSD\OSInstall"
New-Item -ItemType Directory -Path "$Source\OSD\Prestart"
New-Item -ItemType Directory -Path "$Source\OSD\USMT"

#Create Script Directory Structure
New-Item -ItemType Directory -Path "$Source\Script"

#Create State Capture Directory Structure
New-Item -ItemType Directory -Path "$Source\StateCapture"

#Create Tools Directory Structure
New-Item -ItemType Directory -Path "$Source\Tools"
New-Item -ItemType Directory -Path "$Source\Tools\PSTools"

#Create Windows Update Directory Structure
New-Item -ItemType Directory -Path "$Source\WindowsUpdates"
New-Item -ItemType Directory -Path "$Source\WindowsUpdates\Endpoint Protection"
New-Item -ItemType Directory -Path "$Source\WindowsUpdates\Lync 2010"
New-Item -ItemType Directory -Path "$Source\WindowsUpdates\Office 2010"
New-Item -ItemType Directory -Path "$Source\WindowsUpdates\Silverlight"
New-Item -ItemType Directory -Path "$Source\WindowsUpdates\Visual Studio 2008"
New-Item -ItemType Directory -Path "$Source\WindowsUpdates\Windows 7"
New-Item -ItemType Directory -Path "$Source\WindowsUpdates\Windows 8"

#Create WSUS Directory
New-Item -ItemType Directory -Path "$Source\WSUS"
New-Item -ItemType Directory -Path "$Source\WSUS\SCCMDeploymentPackages"

#Create the Share and Permissions
New-SmbShare -Name "$ShareName” -Path “$Source” -CachingMode None -FullAccess Everyone
New-SmbShare -Name "SCCMDeploymentPackages” -Path "$Source\WSUS\SCCMDeploymentPackages" -CachingMode None -FullAccess $NetworkAccount,"NETWORK SERVICE"

#Set Security Permissions
$Acl = Get-Acl "$Source\Logs"
$Ar = New-Object System.Security.AccessControl.FileSystemAccessRule("$NetworkAccount","FullControl", "ContainerInherit, ObjectInherit", "None", "Allow")
$Acl.SetAccessRule($Ar)
Set-Acl "$Source\Logs" $Acl

$Acl = Get-Acl "$Source\OSD\Captures"
$Ar = New-Object System.Security.AccessControl.FileSystemAccessRule("$NetworkAccount","FullControl", "ContainerInherit, ObjectInherit", "None", "Allow")
$Acl.SetAccessRule($Ar)
Set-Acl "$Source\OSD\Captures" $Acl

$Acl = Get-Acl "$Source\StateCapture"
$Ar = New-Object System.Security.AccessControl.FileSystemAccessRule("LOCALSERVICE","FullControl", "ContainerInherit, ObjectInherit", "None", "Allow")
$Acl.SetAccessRule($Ar)
Set-Acl "$Source\StateCapture" $Acl

$Acl = Get-Acl "$Source\WSUS"
$Ar = New-Object System.Security.AccessControl.FileSystemAccessRule("$NetworkAccount","FullControl", "ContainerInherit, ObjectInherit", "None", "Allow")
$Acl.SetAccessRule($Ar)
Set-Acl "$Source\WSUS" $Acl

$Acl = Get-Acl "$Source\WSUS"
$Ar = New-Object System.Security.AccessControl.FileSystemAccessRule("NETWORK SERVICE","FullControl", "ContainerInherit, ObjectInherit", "None", "Allow")
$Acl.SetAccessRule($Ar)
Set-Acl "$Source\WSUS" $Acl