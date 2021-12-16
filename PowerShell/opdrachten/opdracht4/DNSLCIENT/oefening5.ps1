[String] $adres = Read-Host -Prompt "Geef een adres op"
$ipadres = Resolve-DnsName $adres | Select-Object -Property IP4Address
$TTL = Resolve-DnsName $adres | Select-Object -Property TTL
echo $ipadres.IP4Address
echo $TTL.TTL