# función que accede a dos variables globales
# de tipo lista y diccionario, REASIGNANDOLAS
def reset():
    lista = list()
    diccionario = dict()

# programa
lista = [-3,0,4,2,0,1,0,-1,0,0]
diccionario = {"pepe": 2, "pepa": 1, "pepito": 0, "pepita": 3, "pepin": 0}

print("Antes de ejecutar la función")
print("Lista: ",lista)
print("Diccionario: ",diccionario)

reset()

print("\nDespués de ejecutar la función")
print("Lista: ",lista)
print("Diccionario: ",diccionario)
