################################ Ejercicio 1 (Acabado) ################################
print("################################ Ejercicio 1 ################################","\n")
def cadena_aleatoria_minus(longitud):
    import random
    import string
    result = ''
    s = string.ascii_lowercase
    for i in range(longitud):
        result = result + random.choice(s)
    return result

for i in range(5):
    print(cadena_aleatoria_minus(5))

print("\n")
################################ Ejercicio 2 (Acabado) ################################
print("################################ Ejercicio 2 ################################","\n")
import random

def palabras_aleatorias_fichero(nombre_fichero,numero_palabras):
    texto=""
    if numero_palabras>0 and type(numero_palabras)==int:
        fp=open(nombre_fichero+".txt","r")
        palabras=fp.read().split()
        fp.close()
        for i in range(numero_palabras):
            texto+=random.choice(palabras)+" "
        return texto
    else:
        return "El número de palabras debe ser un entero y positivo"
n=int(input("Introduzca el número de palabras aleatorias que contendrá el texto --> "))
print("\n")
print(palabras_aleatorias_fichero("palabras",n),"\n")
################################ Ejercicio 3 (Acabado) ################################
print("################################ Ejercicio 3 ################################","\n")
import random
def dos_dados():
    uno=random.randint(1,6)
    dos=random.randint(1,6)
    tres=uno+dos
    if tres%2==0:
        return ("dado 1 ---> "+str(uno),"dado 2 ---> "+str(dos),"par")
    else:
        return ("dado 1 ---> "+str(uno),"dado 2 ---> "+str(dos),"impar")

print(dos_dados(),"\n")
################################ Ejercicio 4 (Acabado) ################################
print("################################ Ejercicio 4 ################################","\n")
def gauss(x,v,n):
    lista=[]
    for i in range(n):
        lista.append(random.gauss(x,v))
    return lista
print(gauss(4,1,10),"\n") 
################################ Ejercicio 5 (Acabado) ################################
print("################################ Ejercicio 5 ################################","\n")
import random
def factorial(x):
    numero=1
    for i in range(x):
        numero=numero*(x-i)
    return numero

def lista_aleatoria_naturales(k,n):
    if n>0 and type(n)==int:#Criba
        if n>0 and type(n)==int:#Criba
            if k<=factorial(n):#Criba
                lista=[]
                while len(lista)!=k:
                    t=random.sample(range(1,n+1),n)
                    if t not in lista:
                        lista.append(t)
                return lista
            else:
                return("El primer argumento no puede exceder el factorial del segundo argumento, puesto que no existen tantas permutaciones")

        else:
            return("El primer argumento de la función debe ser un número natural")
    else:
        return("El segundo argumento de la función debe ser un número natural")
    
print(lista_aleatoria_naturales(24,4))
