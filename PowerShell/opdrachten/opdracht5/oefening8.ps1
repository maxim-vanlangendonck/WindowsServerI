$groep = Read-Host -Prompt "Geef naam voor groep"
$aantal = Read-Host -Prompt	"Aantal gebruikers"

$locatie = "DC=hogent,DC=local"

#aanmaken OU
New-ADOrganizationalUnit -Name $groep -Path $locatie

#aanmaken groep in OU
New-ADGroup -GroupScope Global -Name "$groep" -Description "OU voor $groep" -Path "OU=$groep,$locatie"

#gebruikers aanmaken en toevoegen aan groep
for($i=1;$i -le $aantal; $i++){
    New-ADUser -Name "$groep gebruiker $i" -SamAccountName "$($groep)_$($i)" -UserPrincipalName "$($groep)_$($i)@hogent.local" -Path "OU=$groep,$locatie"
    Add-ADGroupMember -Identity "$groep" -Members "$($groep)_$($i)"
}