[String] $naam = Read-Host -Prompt "Geef gebruikersnaam"

$user = GetADUser -Identity $naam

Write-Host $user.DistinguishedName