# Get the powershell profile path
$PROFILE

# Add to the profile and restart your session
function prompt {
    $p = Split-Path -leaf -path (Get-Location)
    "$p> "
  }


  # Reference
  # https://superuser.com/questions/446827/configure-windows-powershell-to-display-only-the-current-folder-name-in-the-shel