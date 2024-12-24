## Array copy create a new memory reference
import numpy as np


precos =np.array([150.50,82.00,75.77,92.12,115])
print(precos)

# It's not a copy. It's a reference
preco_ajustado = precos

print(preco_ajustado)

# This is a copy of an array 
preco_ajustado = precos.copy()

# This is a subset of an array
preco_ajustado2 = precos[3:len(precos)]

print(preco_ajustado2)
