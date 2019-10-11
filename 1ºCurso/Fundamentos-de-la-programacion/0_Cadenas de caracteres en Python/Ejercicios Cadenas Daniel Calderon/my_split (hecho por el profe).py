# CADENAS - Ejercicio 5 - Solución propuesta

# Función ordenar_sep()
# Entrada: secuencia de separadores
# Retorna una lista con los separadores ordenados de mayor a menor longitud

def ordenar_sep(sep_seq):
    l_sep=[]
    for sep in sep_seq:
        i=0
        while i<len(l_sep) and len(sep)<len(l_sep[i]):
            i+=1
        l_sep.insert(i,sep)
    return l_sep

# Función match()
# Precondición: las cadenas separadoras están ordenadas de mayor a menor longitud
# Retorna el primer separador que encaja en el inicio de la cadena,
# o la cadena vacía si no encuentra ninguno

def match(cadena,lista_separadores):
    for sep in lista_separadores:
        if cadena[:len(sep)] == sep:
            return sep
    return ''

# Función my_split()

def my_split(s,sep_seq=' \n\t',max_splits=None):
    
    # por si acaso los separadores no vienen en una lista
    # por ejemplo: " \n\t" --> [' ', '\n', '\t']
    sep_seq = list(sep_seq)

    l_sep=ordenar_sep(sep_seq)
    
    l=[]
    current_word='' # en esta variable se van construyendo las palabras
    nsplits=0
    i=0
    
    # ciclo 0: PRINCIPAL - recorre la cadena de entrada s
    while i<len(s) and (max_splits == None or nsplits < max_splits):
        
        # ciclo 1: procesa todos los separadores que vayan seguidos
        while i<len(s):
            sep = match(s[i:],l_sep)
            if len(sep)>0:
                i+=len(sep)
            else:
                break
            
        # la posición i podría corresponder al final de la cadena s,
        # en cuyo caso no se hace nada (el ciclo principal acabará)
        if i<len(s):
            
            # si en current_word hay una palabra (no vacía),
            # la envía a la lista de salida y reinicia current_word
            # a cadena vacía (para construir la siguiente palabra)
            if len(current_word)>0:
                l.append(current_word)
                nsplits+=1
                current_word=''
                
            # comenzamos a construir la siguiente palabra
            current_word+=s[i]
            i+=1
            
            # ciclo 2: procesa todas las posiciones i donde no encaje
            # ninguna cadena separadora, enviando los caracteres
            # correspondientes a la palabra en construcción.
            # Al salir de este while, se ha visto ya una cadena separadora
            while i<len(s):
                sep = match(s[i:],l_sep)
                if len(sep)==0:
                    current_word+=s[i]
                    i+=1
                else:
                    i+=len(sep)
                    break

    # Si se ha alcanzado max_splits sin llegar al final de s,
    # terminamos de construir la última palabra
    if i<len(s):
        current_word+=s[i:]
        
    # Si queda una palabra (no vacía), la enviamos a la lista de salida
    if len(current_word)>0:
        l.append(current_word)
        
    return l


# Programa principal (para probar la función my_split())

import time

print("my_split(): solución propuesta")
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
