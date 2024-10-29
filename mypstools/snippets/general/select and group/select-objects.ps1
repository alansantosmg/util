
# select object
get-process |select-object -property ID,Name,WorkingSet
get-service s* |select-object -First 3
get-service |select-object -first 1 -property *

