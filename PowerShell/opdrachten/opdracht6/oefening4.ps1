$scopes = Get-DhcpServerv4Scope
foreach($scope in $scopes){
    Write-Host "Scope $($scope.ScopeId)"
    $leases = Get-DhcpServerv4Lease -ScopeId $scope.ScopeId
    foreach($lease in $leases){
        Write-Host "`t Lease: $($lease.ClientId) - $($lease.IPAddress)"
    }
}