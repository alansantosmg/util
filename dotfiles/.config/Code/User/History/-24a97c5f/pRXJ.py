
password = 'teste11T'


def verifica_numeros(password):
    counter = 0
    check = False
    for c in password:
        if c.isnumeric():
            counter +=1
            if counter == 2:
                counter = 0
                check = True
                break
    print(counter, check)
    return check




def verifica_maiusculas(password):
    counter = 0
    check = False
    for c in password:
        if c.upper() == c:
            print(f"c = {c}")
            counter +=1
            if counter == 2:
                counter = 0
                check = True
                break
                
    print(counter, check)
    return check


print(f"2 Numeros: {verifica_numeros(password)}")
print(f"Maiusculas: {verifica_maiusculas(password)}")




 #   if c.upper() == c: 
  #      check = True
  #  else:       
   #     check = False
    
   

    
#print(check)

    
"""
    if len(password) > 4:
    elif: passorwd
    
    
    

#Não alterar o código abaixo
myPass = input()

if (validaSenha(myPass)):
    print("Senha válida")
else:
    print("Senha inválida")

    """