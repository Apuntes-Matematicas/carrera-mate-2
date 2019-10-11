# función que accede a dos variables globales
# de tipo lista y diccionario, modificándolas ...
# ... PERO SIN REASIGNARLAS
def borrar_ceros():
    i=0
    while i < len(lista):
        if lista[i] == 0:
            del lista[i]
        else:
            i = i+1

    keylist = list(diccionario.keys())
    for k in keylist:
        if diccionario[k] == 0:
            del diccionario[k]

# programa
lista = [-3,0,4,2,0,1,0,-1,0,0]
diccionario = {"pepe": 2, "pepa": 1, "pepito": 0, "pepita": 3, "pepin": 0}

print("Antes de ejecutar la función")
print("Lista: ",lista)
print("Diccionario: ",diccionario)

borrar_ceros()

print("\nDespués de ejecutar la función")
print("Lista: ",lista)
print("Diccionario: ",diccionario)
