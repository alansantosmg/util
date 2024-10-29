# Find Account lockout source

$properties = @(
'TimeCreated',
@{n='Account Name';e={$_.Properties[0].Value}},
@{n='Caller computer name';e={$_.Properties[1].Value}}
)

Get-WinEvent -FilterHashTable @{LogName='Security'; ID=4740} | Select $properties

