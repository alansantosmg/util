import numpy as np

numeros = np.array([1,2,3,4,5,6,7,8,9,10])

# iterating by for loop
for i in numeros:
    print(i)

for i in range(0,10,1):
    print(numeros[i])




# iterating on bi-dimensional array


precos_por_categoria = np.array([
    [10.50,9.54,1.08,7.98],
    [3.69, 5.59, 6.39, 4.20]
])

for categoria in precos_por_categoria:
    print(categoria)


for categoria in precos_por_categoria[0]:
    for preco in categoria:
        print(preco)