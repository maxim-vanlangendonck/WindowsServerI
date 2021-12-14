[int]$faculteit = Read-Host -Prompt "Waarvan wilt u de faculteit berekenen?"
$uitkomst = 1
for($i = 1; $i -le $faculteit; $i++){
    $uitkomst *= $i
}
Write-Host $faculteit'! = '$uitkomst