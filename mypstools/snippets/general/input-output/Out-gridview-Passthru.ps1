
# using gridview to pick-up itens to pipeline 

get-service | Where-Object {$_.status -eq "Running"} |
Out-GridView -Title "Select a service" -Outputmode Multiple |
restart-service -PassThru