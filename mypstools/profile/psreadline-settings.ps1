
# install the new version of PSReadLine module

Get-Module PSReadLine
Install-module PSReadLine -Force
remove-module PSReadLine
Import-module PSReadLine
Get-module PSReadLine

Set-PSReadLineOption -PredictionSource History

Set-PSReadLineOption -Colors @{InlinePrediction = "$([char]27)[4;38;5;189m"}

# Use control space to see the command parameters
# F1 help
# F2 command versions 
# Ctrl R = lookup in history


