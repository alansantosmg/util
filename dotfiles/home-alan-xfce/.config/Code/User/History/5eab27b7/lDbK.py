import numpy as np


user_from_source1 = np.array(
    ['john@email.com', 'sara@email2.com', 'crist@laznnnn.com'])

user_from_source2 = np.array(['Kimberly@zuuu.com','almir@teste2.com', 'zordon@tens911.com'])


#To get union we need to pass a tuple
users = np.concatenate((user_from_source1,user_from_source2) )
print(users)


# split an array   (usado para paginar)
result = np.array('revista', 'amarelo', 'azul', 'vermelho', 'rosa', 'verde', 'marron')
results_page = np.array_split(result,3)

