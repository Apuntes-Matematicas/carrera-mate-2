####################################################
# get_count(c,s)
# c: carácter
# s: cadena de caracteres
# Retorna el número de apariciones de c en s

# versión 1: while
def get_count_v1(c,s):
    i=0
    count=0
    while i<len(s):
        if s[i]==c:
            count+=1
        i=i+1
    return count

# versión 2_1: for con índices enteros
def get_count_v2_1(c,s):
    count=0
    for i in range(len(s)):
        if s[i]==c:
            count+=1
    return count

# versión 2_2: el for recorre los elementos del iterable
def get_count_v2_2(c,s):
    count=0
    for x in s:
        if x==c:
            count+=1
    return count

####################################################
# find(c,s)
# c: carácter
# s: cadena de caracteres
# Retorna la posición de la primera aparición de c en s
# o None en caso de que no aparezca

# versión 1_1: while con return en caso de coincidencia
def find_v1_1(c,s):
    i=0
    while i<len(s):
        if s[i]==c:
            return i
        i=i+1
    return None

# versión 1_2: while detector y return posterior
def find_v1_2(c,s):
    i=0
    while i<len(s) and s[i]!=c:
        i=i+1
    if i<len(s):
        return i
    else:
        return None

# versión 2_1: for con índices enteros
# y con return interno en caso de coincidencia
def find_v2_1(c,s):
    for i in range(len(s)):
        if s[i]==c:
            return i
    return None

# versión 2_1: for que recorre los elementos del iterable,
# con índice entero gestionado aparte y return en caso de coincidencia
def find_v2_2(c,s):
    i=0
    for x in s:
        if x==c:
            return i
        i=i+1
    return None

####################################################
# letras_comunes(s1,s2)
# s1, s2: cadenas de caracteres

# versión 1: imprime en líneas sucesivas los caracteres
# de s1 que también aparecen en s2
# Por ejemplo, si s1="cambiar" y s2="empujar", la función
# imprimiría las siguientes líneas:
# a
# m
# a
# r
def letras_comunes_v1(s1,s2):
    for c in s1:
        if c in s2:
            print(c)

# versión 2: retorna una cadena con los caracteres de s1
# que también aparecen en s2
# Por ejemplo, si s1="cambiar" y s2="empujar", la función
# retornaría la cadena 'amar'
def letras_comunes_v2(s1,s2):
    out = ''
    for c in s1:
        if c in s2:
            out = out + c
    return out

# versión 3: retorna una lista con los caracteres de s1
# que también aparecen en s2
# Por ejemplo, si s1="cambiar" y s2="empujar", la función
# retornaría la lista out = ['a','m','a','r']
def letras_comunes_v3(s1,s2):
    out = []
    for c in s1:
        if c in s2:
            out.append(c)
    return out

# versión 4_1: retorna una lista con los caracteres del
# alfabeto que aparecen en ambas cadenas
# Por ejemplo, si s1="cambiar" y s2="empujar", la función
# retornaría la lista out = ['a','m','r']
# En esta versión, sólo comprueba la pertenencia a s2
# de aquellos caracteres que no estén ya en la lista de salida
def letras_comunes_v4_1(s1,s2):
    out = []
    for c in s1:
        if not c in out and c in s2:
            out.append(c)
    return out

# versión 4_2: retorna una lista con los caracteres del
# alfabeto que aparecen en ambas cadenas
# Por ejemplo, si s1="cambiar" y s2="empujar", la función
# retornaría la lista out = ['a','m','r']
# En esta versión, sólo comprueba la pertenencia a s2
# de aquellos caracteres que no hayan sido vistos anteriormente
def letras_comunes_v4_2(s1,s2):
    out = []
    vistos = []
    for c in s1:
        if not c in vistos:
            vistos.append(c)
            if c in s2:
                out.append(c)
    return out

####################################################
# ordenar(s1,s2)
# s1, s2: cadenas de caracteres

# versión 1: retorna una lista con las cadenas s1 y s2
# en orden alfabético (tal que las letras mayúsculas van antes
# que las minúsculas, puesto que sus códigos son menores)
def ordenar_v1(s1,s2):
    if s1<s2:
        return [s1, s2]
    else:
        return [s2, s1]

# versión 2: retorna una lista con las cadenas s1 y s2
# en orden alfabético estricto, independientemente de que
# las letras estén en minúscula o mayúscula
def ordenar_v2(s1,s2):
    if s1.lower() < s2.lower():
        return [s1, s2]
    else:
        return [s2, s1]
