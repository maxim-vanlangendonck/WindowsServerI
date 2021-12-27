$aantal = Read-Host -Prompt "Hoeveel OUs wil je aanmaken?"

for($i = 1; $i -le $aantal; $i++) {
    New-ADOrganizationalUnit -Name "test$i" -ProtectedFromAccidentalDeletion $False -Path "DC=hogent,DC=local"
}