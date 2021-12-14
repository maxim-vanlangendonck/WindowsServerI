[int]$randomGetal = Get-Random -Minimum 0 -Maximum 11
[int]$getalGeraden = 11
$teller = 0

while($randomGetal -ne $getalGeraden){
    $getalGeraden = Read-Host -Prompt 'Wat is uw getal?'
    Write-Host 'Het getal is'$getalGeraden
    if($randomGetal -gt $getalGeraden){
        Write-Host 'Hoger!'
    } elseif($randomGetal -lt $getalGeraden){
        Write-Host 'Lager!'
    }
    $teller++
}

Write-Host 'Het te gokken getal was inderdaad' $getalGeraden 'en u hebt het geraden in' $teller 'beurt(en)'