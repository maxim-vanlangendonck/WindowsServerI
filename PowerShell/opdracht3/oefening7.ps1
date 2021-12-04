[int]$getal = Read-Host -Prompt "Tot waar wilt u priemgetallen zoeken?"
$teller = -1
$ints = 0..$getal
Write-Host 'De volgende priemgetallen werden gevonden'

for($i = 2; $i -lt [Math]::Sqrt($ints.length); $i++){
    if($ints[$i] -eq 0){
        continue
    }
    for($j = $i * $i; $j -lt $ints.length; $j += $i){
        $ints[$j] = 0
    }
}
$ints | 
    foreach {
        if($_) {
            Write-Host "$_"
            $teller++
        }
    }
Write-Host "Het aantal priemgetallen dat werd gevonden is: $teller"