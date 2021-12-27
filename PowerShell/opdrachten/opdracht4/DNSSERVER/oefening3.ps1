[String]$zone = "example.temp"

Add-DnsServerPrimaryZone -Name $zone -ZoneFile $zone

Get-DnsServerResourceRecord -ZoneName $zone