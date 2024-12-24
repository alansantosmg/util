
password = 'teste1'






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

verifica_numeros(password)



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