$status = Get-Service -Name MSiSCSI | Select-Object -Property Status

if($status.Status -eq "Stopped"){
    Start-Service -Name MSiSCSI
    Write-Host "WARNING: Waiting for service 'Microsoft iSCSI Initiator Service (MSiSCSI)' to start" -ForegroundColor DarkRed
    Write-Host "iSCSI service gestart"
} elseif($status.Status -eq "Running"){
    Write-Host "The service is already up and running!"
}