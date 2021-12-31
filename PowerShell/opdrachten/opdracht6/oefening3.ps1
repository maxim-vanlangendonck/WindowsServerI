$scopes = Get-DhcpServerv4Scope
foreach($scope in $scopes){
    Write-Host "Scope $($scope.ScopeID)"
    $options = Get-DhcpServerv4OptionValue -ScopeId $scope.ScopeId
    foreach($option in $options){
        Write-Host "`t Scope Option: $($option.OptionId) $($option.value)"
    }
}