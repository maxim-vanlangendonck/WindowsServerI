[string] $naam = Read-Host -Prompt "Geef naam groep"
$leden = Get-ADGroupMember -Identity $naam

foreach($lid in $leden){
    Write-Host $lid.name
}
