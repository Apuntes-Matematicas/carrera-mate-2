
print("################################ Ejercicio 1 ################################","\n")
#Ejercicio 1 (Acabado)
def lineal(x):
    return x+2
def maximo(funcion,a,b,sensi):
    sensi=(b-a)/sensi
    xmax=a
    fmax=funcion(a)
    while a <= b:
        if funcion(a)>fmax:
            fmax=funcion(a)
            xmax=a
        a+=sensi
    return ("fmax = f("+str(xmax)+")= "+str(fmax))
print(maximo(lineal,-2,0,1000000),"\n")
print("################################ Ejercicio 2 ################################","\n")

#Ejercicio 2 (Acabado)
def debin(n1):
    n2=0
    n1=n1[1:]
    exp=len(n1)-1
    for c in n1:
        n2+=int(c)*2**exp
        exp+=-1
    return n2

def deoct(n1):
    n1=n1[1:]
    n2=0
    exp=len(n1)-1
    for c in n1:
        n2+=int(c)*8**exp
        exp+=-1
    return n2

def dehex(n1):
    n1=n1[1:]
    n2=0
    dic={"a":10,"b":11,"c":12,"d":13,"e":14,"f":15}
    exp=len(n1)-1
    for c in n1:
        if c not in dic:
            n2+=int(c)*16**exp
        elif c in dic:
            n2+=dic[c]*16**exp
        exp+=-1
    return n2

def entero(s):
    if s[0]=="-":
        if s[1]=="b":
            return -1*debin(s[2:])
        elif s[1]=="o":
            return -1*deoct(s[2:])
        elif s[1]=="x":
            return -1*dehex(s[2:])
        if s[1]=="d":
            return -1*int(s[2:])
    else:
        if s[0]=="b":
            return debin(s[1:])
        elif s[0]=="o":
            return deoct(s[1:])
        elif s[0]=="x":
            return dehex(s[1:])
        if s[0]=="d":
            return int(s[1:])
        
print("101(binario) ---> ",debin("b101"),"\n")

print("13(octal) ---> ",deoct("o13"),"\n")

print("c921(hexadecimal) ---> ",dehex("x921"),"\n")

print("-d921(decimal) ---> ",entero("-d921"),"\n")

print("################################ Ejercicio 3 ################################","\n")
    
#Ejercicio 3 (Acabado)

def matriz_num(fichero):
    fp=open(fichero+".txt","r")
    filas=fp.read().split("\n")
    fp.close()
    matriz_final=[]
    matriz_paso=[]
    filas_matriz=0
    columnas_matriz=0
    for fila in filas:
        matriz_paso.append(fila.split())
    for i in range(len(matriz_paso)):
        if int(matriz_paso[i][0])>filas_matriz:
            filas_matriz=int(matriz_paso[i][0])
        if int(matriz_paso[i][1])>columnas_matriz:
            columnas_matriz=int(matriz_paso[i][1])
    for i in range(filas_matriz+1):
        matriz_final.append([])
        for j in range(columnas_matriz+1):
            matriz_final[i].append(0)
    for i in range(len(matriz_paso)):
        matriz_final[int(matriz_paso[i][0])][int(matriz_paso[i][1])]=float(matriz_paso[i][2])
    return matriz_final       
        
print(matriz_num("numeros"),"\n")
            


print("################################ Ejercicio 4 ################################","\n")

#Ejercicio 4 (Acabado)
def solorepes(lista):
    lista2=[]
    for numero in lista:
        if numero not in lista2 and lista.count(numero)>1:
            lista2.append(numero)
    lista=lista2[:]
    return lista

l=[1,0,3,4,1,2,3,9,1]
print(l,"\n")
print("Repetidos --->",solorepes(l),"\n")


print("################################ Ejercicio 5 ################################","\n")

#Ejercicio 5 (Acabado)
def repeticiones(lista):
    resultado=[]
    while len(lista)!=0:
        numero=lista[0]
        veces=lista.count(numero)
        while numero in lista:
            lista.remove(numero)
        z=numero,veces
        resultado.append(z)
    return resultado

print(debin("101"),"\n")

print(deoct("13"),"\n")

print(dehex("c921"),"\n")

print(entero("-d921"),"\n")


lista=[1,0,3,4,1,2,3,9,1]
print(repeticiones(lista))

