## Opdracht 2: Variabelen, invoer en uitvoer
### A. Variabelen
1. `$LocalUsers = Get-LocalUser`
2. 
```PowerShell
$ran1 = Get-Random -Minimum 0 -Maximum 99
$ran2 = Get-Random -Minimum 0 -Maximum 99

$somRan = $ran1 + $ran2
$productRan = $ran1 * $ran2
```  
3. `Get-Variable`
``` PowerShell
Remove-Variable -Name ran1
Remove-Variable -Name ran2
Remove-Variable -Name somRan
Remove-Variable -Name productRan
Remove-Variable -Name LocalUsers
```
4. ```PowerShell
   $ran1 = Get-Random -Minimum 50 -Maximum 99
   $ran2 = Get-Random -Minimum 5 -Maximum 9
```
5. `$ran1 -gt $ran2`
### B. Invoer en Uitvoer
1. `$naam = Read-Host -Prompt "Wat is jouw naam?"`
    `Write-Host $naam.ToUpper()`
2. 