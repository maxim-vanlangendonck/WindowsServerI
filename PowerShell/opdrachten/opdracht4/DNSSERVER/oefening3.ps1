[String]$zone = "example.temp"

Add-DnsServerPrimaryZone -Name $zone -ZoneFile "example.temp.DNS"

Get-DnsServerResourceRecord -ZoneName $zone