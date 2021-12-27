$zone = "example.temp"
$netID = "192.168.10.0/24"
$r_zone = "10.168.192.in-addr.arpa"

# Merk op: $netID kan niet gebruikt worden als naam voor het bestand (ongeldige karakters!)
Add-DnsServerPrimaryZone –NetworkID $netID -ZoneFile $r_zone

for($i = 20; $i -lt 30; $i++){
    $naam = "laptop$i.$zone"
    Add-DnsServerResourceRecordPtr -ZoneName $r_zone -Name $i -PtrDomainName $naam
}
