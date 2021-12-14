[int] $getal1 = Read-Host -Prompt "Wat is uw eerste getal?"
Write-Host "Uw eerste getal is $getal1."
[int] $getal2 = Read-Host -Prompt "Wat is uw tweede getal?"
Write-Host "Uw tweede getal is $getal2."

Write-Host "Maak een keuze uit de volgende bewerkingen:
    1. Optellen
    2. Aftrekken
    3. Vermenigvuldigen
    4. Delen"
$keuze = Read-Host -Prompt "Uw keuze"
switch($keuze){
    1 {$uitkomst = $getal1 + $getal2}
    2 {$uitkomst = $getal1 - $getal2}
    3 {$uitkomst = $getal1 * $getal2}
    4 {$uitkomst = $getal1 / $getal2}
    default {Write-Host "Ongeldige keuze"}
}
Write-Host "De uitkomst van de bewerking: $uitkomst"