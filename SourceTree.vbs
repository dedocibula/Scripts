Set WshShell = CreateObject("WScript.Shell") 

WshShell.Run "SourceTree.exe"

sComputerName = "."
bIsRunning = False
Set objWMIService = GetObject("winmgmts:\\" & sComputerName & "\root\cimv2")
sQuery = "SELECT * FROM Win32_Process"
Set objItems = objWMIService.ExecQuery(sQuery)
'iterate all item(s)
For Each objItem In objItems
	If objItem.Name = "pageant.exe" Then
		bIsRunning = True
	End If
Next

If Not bIsRunning Then
	WScript.Sleep 3000
	WshShell.Run "tools\putty\pageant.exe <KEYS_HERE>"
End If

Set WshShell = Nothing