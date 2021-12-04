$zin = Read-Host -Prompt "Waarvan wilt u het aantal woorden weten?"
Write-Host $zin
$arr = $zin -split " "
$aantalWoorden = $arr.Length
Write-Host "Uw invoer heeft $aantalWoorden woord(en)."
Write-Host "Deze woorden zijn:"
foreach ($woord in $arr) {
    Write-Host $woord
}