$scopes = Get-DhcpServerv4Scope
foreach($scope in $scopes) {
    Write-Host "Scope $($scope.ScopeId)"
    $exclusions = Get-DhcpServerv4ExclusionRange -ScopeId $scope.ScopeId
    foreach($exclusion in $exclusions) {
        Write-Host "`t Exclusion: $($exclusion.StartRange) - $($exlusion.EndRange)"
    }
}