$dns = Get-DnsClientServerAddress -InterfaceAlias LAN -AddressFamily IPv4
$winserver1 = "192.168.0.1"

if($dns.ServerAddresses -eq $winserver1){
    Write-Host "DNS reeds ingesteld op $winserver1"
} else {
    Get-DnsClient | Set-DnsClientServerAddress -ServerAddresses ($winserver1)
    Write-Host "Dns aangepast $winserver1"
}