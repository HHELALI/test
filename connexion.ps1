Set-Executionpolicy -Scope CurrentUser -ExecutionPolicy UnRestricted
$User = "admin"
$PWord = ConvertTo-SecureString –String "azerty" –AsPlainText -Force
$Credential = New-Object –TypeName System.Management.Automation.PSCredential –ArgumentList $User, $PWord


Enable-PSRemoting –force


Invoke-Command -ComputerName 10.20.75.229 -Credential $Credential -ScriptBlock {New-Item -Path . -Name "testfile1.txt" -ItemType "file" -Value "This is a text string."}
