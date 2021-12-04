$zin = Read-Host -Prompt "Waarvan wilt u de woorden in omgekeerde volgorde zien?"
Write-Host $zin
$arr = $zin -split " "
[array]::Reverse($arr) -join ''
Write-Host "De woorden van uw invoer in omgekeerde volgorde:"
Write-Host $arr