import random

# Función que modifica una variable global
# de tipo inmutable (ncalls: entero)

def f(x,lista):
    global ncalls
    ncalls=ncalls+1
    
    if len(lista) == 0 or ncalls % 2 == 1:
        lista.append(x)
    else:
        j = random.randint(0,len(lista)-1)
        lista[j] = x
 
#programa

ncalls=0
l=list()
for valor in range(1,11):
    f(valor,l)
    
print("Resultado: ",l)
print("Número de llamadas: ",ncalls)
