$Env:CONDA_EXE = "/home/alan/.config/jupyterlab-desktop/jlab_server/bin/conda"
$Env:_CE_M = ""
$Env:_CE_CONDA = ""
$Env:_CONDA_ROOT = "/home/alan/.config/jupyterlab-desktop/jlab_server"
$Env:_CONDA_EXE = "/home/alan/.config/jupyterlab-desktop/jlab_server/bin/conda"
$CondaModuleArgs = @{ChangePs1 = $True}
Import-Module "$Env:_CONDA_ROOT\shell\condabin\Conda.psm1" -ArgumentList $CondaModuleArgs

Remove-Variable CondaModuleArgs