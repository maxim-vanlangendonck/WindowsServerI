[int] $aantal = Read-Host -Prompt "Hoeveel OUs wil je aanmaken"
$locatie = "DC=hogent,DC=local"
for($i=1;$i -le $aantal; $i++){
    New-ADOrganizationalUnit -Name "test$i" -ProtectedFromAccidentalDeletion $false -Path $locatie
    $locatie = "OU=test$($i),$locatie"
}