# función que MODIFICA dos variables globales
# de tipo inmutable: entero y cadena
def hacer3():
    n=3
    cadena = cadena + '3'

# programa
n = 1
cadena = "hola"
print("Antes: ",n,cadena)
hacer3()
print("Después: ",n,cadena)
