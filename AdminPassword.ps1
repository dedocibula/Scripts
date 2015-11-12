$ComputerName = $env:COMPUTERNAME
$user = [adsi]"WinNT://$ComputerName/Administrator"
$user.SetPassword("<new password>")