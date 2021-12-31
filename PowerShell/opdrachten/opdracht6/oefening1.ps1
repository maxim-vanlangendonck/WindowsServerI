$scopes = Get-DhcpServerv4Scope
foreach($scope in $scopes){
    Write-Host $scope.ScopeId
}