$RAM= (Get-WmiObject Win32_ComputerSystem).TotalPhysicalMemory/1GB
Write-Host "Recuperation de la taille de la RAM utilisé" $RAM



$CurrentPageFile = Get-WmiObject -Class Win32_PageFileSetting 
Write-Host "L'emplacement du pagefile " $CurrentPageFile.Name


$emplacement=$CurrentPageFile.Name
$emplacement=$emplacement.Substring(0,3)


$SWAP=(Get-ChildItem $emplacement -Attributes H,S | ? Name -eq "pagefile.sys").Length /1GB
Write-Host "La taille du fichier pagefile " $SWAP


$CurrentPageFile = Get-WmiObject -Class Win32_PageFileSetting 

Write-Host "L'emplacement du pagefile " $CurrentPageFile.Name