# split an array   (usado para paginar)
import numpy as np
result = np.array(['revista', 'amarelo', 'azul', 'vermelho', 'rosa', 'verde', 'marron'])
print(result)
results_page = np.array_split(result,3)
print(results_page)