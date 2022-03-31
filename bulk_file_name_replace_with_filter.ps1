Write-Host "Bulk File name replace one liner for my custom requirements, ***Anvesh Reddy Annem***.`n"

$source      = Read-Host "`nEnter the folder in which files names are to be replaced"
$matchFilter = Read-Host "`nEnter the string to filter files, else leave it empty"
$oldName     = Read-Host "`nString in Old file name"
$newName     = Read-Host "`nString in New file name"


Get-ChildItem -Path $source | Where-Object { $_.Name -cmatch 'i_' } | Rename-Item -NewName {$_.Name -replace $oldName,$newName}
