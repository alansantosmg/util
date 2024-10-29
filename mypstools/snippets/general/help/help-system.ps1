

# Get powershell help system


######################## Getting help

#Get help about commands
Get-Command *get*

#Get verbs and noums commands.

# Common verbs: add, remove, clear, close, format, get, move, new, show, start, stop

# Show command information (example)
Show-command Get-Date

# Show command help (example)
Get-Help get-date
Get-Help Get-Date -online  # online help
Get-Help Get-Date -Examples # examples help
Get-Help Get-Date -Detailed # Detailed help
Get-Help Get-Date -ShowWindow  # Show a help window

#Show parameters, examples
Help Get-item -Full  

#show about
help about_commonparameters

#show parameter details
help Get-item -parameter name
help Get-item -paramter *

Get-process (F1 key) # Show instant help


## Getting help


# Example 1
Get-command -verb Get -Noum *dns*

# Example 2
Get-command -name *Firewall* -CommandType Function

Get-help -Name *DNS*

Get-verb -verb M*

help about*

# get command options, 
Get-command |get-member
get-Command | get-member -MemberType property/Method

Get-alias -Definition Invoke-history

# use control space para mostrar todos os parametros do cmdlet
get-services - [control space]



## Help with verbs
Get-verb -verb Set |format-list
Get-verb -Group Security | format-list


## Powershell example

$c = Get-Service |
Where-Object status -eq "stopped" |
select-Object Name,Status |
more

# obter objetos serviço, quando status (propriedade) for igual
# a parado, selecione as propriedades do Objeto Name,Status
