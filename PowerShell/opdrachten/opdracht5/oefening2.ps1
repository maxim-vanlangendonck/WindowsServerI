$getal = Read-Host -Prompt "Geef een getal op"

for($i = 1; $i -le $getal; $i++) {
    New-ADOrganizationalUnit -Name "test$i" -ProtectedFromAccidentalDeletion $False -Path "DC=hogent,DC=local"
}