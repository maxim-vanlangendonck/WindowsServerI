$aantal = (Get-DnsClientCache | Measure-Object).Count
Write-Host "Er zitten $aantal entries in de DNS Client cache"
Clear-DnsClientCache
$aantal = (Get-DnsClientCache | Measure-Object).Count
Write-Host "Er zitten $aantal entries in de DNS Client cache"