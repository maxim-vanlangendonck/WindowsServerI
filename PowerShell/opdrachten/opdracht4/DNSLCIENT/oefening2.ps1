[String] $naam = Read-Host -Prompt "Geef adres"
$entry = Get-DnsClientCache -Entry $naam

if($entry){
    $data = $entry.Data
    Write-Host "$naam gevonden in DNS cache, de waarde is $data"
} else {
    Write-Host "$naam niet gevonden"
}