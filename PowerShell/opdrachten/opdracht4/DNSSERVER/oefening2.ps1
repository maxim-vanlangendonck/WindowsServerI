$zones = Get-DnsServerZone
foreach($zone in $zones){
    if($zone.IsReverseLookupZone){
        Write-Host "$($zone.ZoneName) - $($zone.ZoneType) - Reverse Lookup"
    } else {
        Write-Host "$($zone.ZoneName) - $($zone.ZoneType) - Forward Lookup"
    }
}