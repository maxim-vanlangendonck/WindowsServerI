[string] $naam = Read-Host -Prompt "Geef naam OU"
$ous = Get-ADOrganizationalUnit -Filter'Name -like $naam'

foreach($ou in $ous){
    Write-Host $ou.DistinguishedName
}