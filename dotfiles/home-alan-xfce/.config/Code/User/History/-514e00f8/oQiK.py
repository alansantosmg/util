
## Exercicio 2
import math
print(math.trunc(9.8))
print(math.ceil(5.6))
print(math.factorial(6))
print(math.floor(5.6))
print(abs(-185.2))
print(int(1.6))
print(divmod(3,2))

## questão 3

entrada = (1,3,5,9,12,14,16,18,19,20,21)
impares = 0
pares = 0
for n in entrada:
    if n % 2 == 0:
        pares  +=1
    else:
        impares +=1
print(f'Pares: {pares}')
print(f'Impares: {impares}')



