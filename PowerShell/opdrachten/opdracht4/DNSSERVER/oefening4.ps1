for($i = 20; $i -le 29; $i++){
    Add-DnsServerResourceRecordA -Name "laptop$i" -ZoneName "example.temp" -IPv4Address "192.168.10.$i"
}