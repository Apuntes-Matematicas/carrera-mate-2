import random
import string

# Función auxiliar: genera algo parecido a un nombre
#                   (la primera letra en mayúscula)
def rndname(n):
    vocales = "aeiou"
    consonantes = [c for c in string.ascii_lowercase if c not in vocales]
    lista = [vocales, consonantes]
    name = random.choice(consonantes).upper()
    for i in range(n-1):
        name = name + random.choice(lista[i%2])
    return name

# Programa - Parte 1: generar un archivo de texto tipo tabla de valores
#                     (con cabecera)
filename = input("Nombre de archivo: ")
n_lineas = int(input("Número de ítems: "))

fp = open(filename,"w",encoding="utf-8")
# cabecera
fp.write("Nombre edad DNI Indice Ciudad\n")
# generación de datos
for i in range(n_lineas):
    len_name = random.randint(4,10)
    fp.write(rndname(len_name))
    fp.write(" "+str(random.randint(18,25)))
    fp.write(" "+str(random.randrange(10000000,100000000)))
    fp.write(" "+str(random.gauss(0.0,10.0)))
    len_city = random.randint(6,12)
    fp.write(" "+rndname(len_city)+"\n")
fp.close()

# Programa - Parte 2: a partir del primer archivo, generar otro
#                     con la misma información, pero tabulada
fp = open(filename,"r",encoding="utf-8")
fp_new = open("new_"+filename,"w",encoding="utf-8")

# cabecera
header = fp.readline()
l = header.split()
fp_new.write("{:<12s}".format(l[0]))
fp_new.write("{:<6s}".format(l[1]))
fp_new.write("{:<12s}".format(l[2]))
fp_new.write("{:>12s}\t".format(l[3]))
fp_new.write("{:<15s}\n".format(l[4]))

# tabulación de los datos
for linea in fp:
    l = linea.split()
    fp_new.write("{:<12s}".format(l[0]))
    fp_new.write("{:<6s}".format(l[1]))
    fp_new.write("{:<12s}".format(l[2]))
    fp_new.write("{:> 12.4f}\t".format(float(l[3])))
    fp_new.write("{:<15s}\n".format(l[4]))
fp_new.close()
    
