<#

Explore Powershell Gallery

#>

# From web
Start-Process https://powershellgalery.com   
start-Process https://github.com/jdhitsolutions/PSGalleryReport  

# From command line prompt

Install-PSResource PSGalleryExplorer
Get-command -module PSGalleryExplorer

#Common Commands
Find-PSGModule -ByTag excel 
Fid-PSGModule -ByTag excel -includeRegulars # the most downloaded modules

