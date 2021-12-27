$forwarder = "8.8.8.8"
$DNSForwarder = Get-DnsServerForwarder | Select-Object -Property IPAddress

if($DNSForwarder.IPAddress -eq $forwarder){
    Write-Host "De DNS server maakt als gebruikt van deze forwarder!"
} else {
    Set-DnsServerForwarder -IPAddress $forwarder
    Write-Host "Forwarder aangepast naar $DNSForwarder"
}