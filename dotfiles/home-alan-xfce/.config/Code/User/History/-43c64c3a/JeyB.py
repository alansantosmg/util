#import numpy as np

def DictToList(dict):
    valores = list()
    for v in dict:
        valores.value(dict.get(v))
        print(valores)



faturamento = {
    "01/01/2023": 5500,
    "02/01/2023": 8850,
    "03/01/2023": 10500,
    "04/01/2023": 6000,
    "05/01/2023": 4500,
    "06/01/2023": 11000,
    "07/01/2023": 1260
}


lista_faturamento = DictToList(faturamento)
#print(np.valores(lista_faturamento))