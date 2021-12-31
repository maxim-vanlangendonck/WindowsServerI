$scopes = Get-DhcpServerv4Scope
foreach($scope in $scopes){
    Write-Host "Scope: $($scope.ScopeId)"
    $reservations = Get-DhcpServerv4Reservation -ScopeId $scope.ScopeId
    foreach($reservation in $reservations){
        Write-Host "`t Reservation: $($reservation.Name) - $($reservation.ClientId) - $($reservation.IPAddress)"
    }
}