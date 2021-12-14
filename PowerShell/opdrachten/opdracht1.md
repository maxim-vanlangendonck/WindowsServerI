## Opdracht 1: Inleiding PowerShell
### A. Basisconcepten
1. `Get-Help -Online`
2. `Save-Help`
3. `Get-Help Get-Alias`
    Er zijn geen verplichte parameters voor het cmdlet Get-Alias
4. 
5. `Get-Command -Verb *X*`
6. `Get-Command`
7. `Get-*user*`
8. `Get-PSProvider`
9. d
10. `Get-Command | where {$_.CommandType -eq 'Alias'}`
11. `Get-History`
    
### B. Getters en Setters
1. `Get-Item C:`
2. d
3. `Get-Date`
4. `Get-Date -Year 2019`
5. d
6. `Get-Disk`
7. `Get-Partition`
8. `Get-LocalUser`
9. `Get-LocalUser | where {$_.Enabled -eq 'False'}`
10. `Get-NetIpAddress`
11. `Get-NetAdapter`
12. `Get-NetAdapter | Sort-Object -Proprety MacAddress`
13. `Get-NetAdapter | Sort-Object -Property ifIndex `
    