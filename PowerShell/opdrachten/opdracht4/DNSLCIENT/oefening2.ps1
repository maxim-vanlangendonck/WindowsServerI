[String] $naam = Read-Host -Prompt "Geef de naam"
$entry = Get-DnsClientCache

if($naam -eq $entry.RecordName){
    Write-Host Get-DnsClientCache -Entry $naam
} else {
    Write-Host "Deze entry staat niet in de DNSClientCache"
}