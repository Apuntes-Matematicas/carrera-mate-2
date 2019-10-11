# función que usa dos variables globales
# (una lista y un entero) SIN MODIFICARLAS
def operar():
    s = 0
    for x in lista:
        s += x*factor
    return s

# programa
factor = 10
lista = [-3,4,2,1,-1]
print("Resultado: ",operar())
