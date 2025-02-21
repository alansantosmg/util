



def verifica_numeros(password):
    counter = 0
    check = False
    for c in password:
        if c.isnumeric():
            counter +=1
            if counter >= 2:
                counter = 0
                check = True
                break
    print(counter, check)
    return check


def verifica_maiusculas(password):
    counter = 0
    check = False
    for c in password:
        if c.isupper():           
            counter +=1
            if counter >= 2:
                counter = 0
                check = True
                break                
    print(counter, check)
    return check

password = 'teste999999A'
print(f"Numeros: {verifica_numeros(password)}")
print(f"Maiusculas: {verifica_maiusculas(password)}")



   

