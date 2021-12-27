$zone = "example.temp"
$r_zone = "10.168.192.in-addr.arpa"
$name = "laptop25"

$record = Get-DnsServerResourceRecord -ZoneName $zone –Name $name
Write-Host "$($record.HostName) -$($record.RecordData.IPv4Address)"

# Host halen uit IP-adres
$r_host = ($record.RecordData.IPv4Address).GetAddressBytes()[3] 
$r_record = (Get-DnsServerResourceRecord -ZoneName $r_zone -Name $r_host)
Write-Host "$($r_record.HostName) -$($r_record.RecordData.PtrDomainName)"