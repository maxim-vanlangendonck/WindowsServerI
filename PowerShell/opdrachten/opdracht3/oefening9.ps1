#sherm leegmaken
Clear-Host
Set-Location c:\
$i=1

$hoofdmap = Read-Host -Prompt "In welke map wenst u submappen aan te maken"
$prefix = "sub"

if(Test-Path $hoofdmap){
    Write-Host "$hoofdmap bestaat, submappen kunnen gemaakt worden"
} else {
    New-Item -Name $hoofdmap -ItemType Directory
    Write-Host "$hoofdmap werd aangemaakt, submappen kunnen aangemaakt worden"
}

$aantal = Read-Host "Hoeveel submappen moeter er gemaakt worden?"
while($i -le $aantal){
    New-Item -Path c:\$hoofdmap -Name $prefix$hoofdmap$i -ItemType Directory | Out-File c:\logs\mapcreatie.txt
    Write-Host "submap $prefix$hoofdmap$i aangemaakt"
    $++
}