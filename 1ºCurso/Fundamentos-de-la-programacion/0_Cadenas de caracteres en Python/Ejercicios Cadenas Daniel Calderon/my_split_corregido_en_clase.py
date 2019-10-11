# Este código, presentado por el alumno Josu Pérez,
# ha sido modificado para corregir algunos errores
# o para mejorar la legibilidad

# Solución al ejercicio 4 de cadenas
# Retorna una lista con los índices donde aparece
# una cadena t dentro de otra cadena s

def find_all(t, s, overlaps = True):
    indices = []
    i = 0
    while i+len(t) <= len(s):
        if t == s[i:i+len(t)]:
            indices.append(i)
            if overlaps == True:
                i += 1
            else:
                i += len(t)
        else:
            i += 1
    return indices

# Solución al ejercicio 5 de cadenas
# Utiliza la función desarrollada para el ejercicio 4

def my_split(s, sep_seq = " \n\t", max_splits = None):
    indices = []
    longitudes = []
    mi_split = []
    
    if type(sep_seq) == str:
        sep_seq = [x for x in sep_seq]
        
    for sep in sep_seq:
        new = find_all(sep, s, overlaps=False)
        indices.extend(new)
        longitudes.extend([len(sep)]*len(new))
        
    i = 0
    palabra = ""
    while i < len(s):
        if i not in indices:
            palabra += s[i]
            i += 1
            
        if i in indices or i == len(s):
            if palabra != "":
                mi_split.append(palabra)
            if max_splits != None:
                if len(mi_split)>max_splits:
                    mi_split[-1] = palabra + s[i:]
                    break
            if i<len(s):
                palabra = ""
                i += longitudes[indices.index(i)]
        
    return mi_split

# Programa principal (para probar la función my_split())

import time

print("my_split(): solución corregida en clase")
s='hola alargar pelear cadena prueba'
sep=[' ','l','a','la']
ms=None

# Ejecuto n_rep veces lo mismo para calcular el tiempo promedio
n_rep = 1000
t1=time.process_time()
for n in range(n_rep):
    l=my_split(s,sep,ms)
t2=time.process_time()

print("Cadena: ", s)
print("Longitud de la cadena: ", len(s))
print("Separadores: ", sep)
print("Max splits: ", ms)
print("Salida: ",l)
print("Tiempo: {0:.8f}".format((t2-t1)/n_rep))
print("Tiempo por cada carácter de la cadena: {0:.8f}".format((t2-t1)/(n_rep*len(s))))
