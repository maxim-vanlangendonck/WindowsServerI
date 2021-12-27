$zone = "example.temp"

for($i = 20; $i -lt 30; $i++){
    $naam = "laptop$i"
    $ip = "192.168.10.$i"
    Add-DnsServerResourceRecordA -Name $naam -ZoneName $zone -IPv4Address $ip
    Write-Host "$naam -$ip toegevoegd"
}