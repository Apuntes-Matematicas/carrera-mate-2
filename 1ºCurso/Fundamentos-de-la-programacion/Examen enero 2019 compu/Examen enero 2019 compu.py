################################# Examen enero  #################################
##Falta el 5
print("\n")

################################# Ejercicio 1 (Acabado) #################################
print("@@@@@@@@@@@@@@@@@@@@@@@@ Ejercicio 1 @@@@@@@@@@@@@@@@@@@@@@@@\n")

#(a)
print("(a)\n")

cadena="hola"*6
print(cadena,"\n")
#>>>holaholaholaholaholahola


#(b)------------------------------------------------------------
print("(b)\n")

cadena="numero: 2 4 7 9"
em=0
cadena=cadena[cadena.find(":")+1:]
cadena=cadena.split()
for num in cadena:
    em+=int(num)
print(em)
#>>>22

print("\n")

#(c)------------------------------------------------------------
print("(c)\n")

def func(x):
    return x-1
x=4
print(func(x)*func(3*x))

#>>>33

print("\n")

################################# Ejercicio 2 (Acabado) #################################
print("@@@@@@@@@@@@@@@@@@@@@@@@ Ejercicio 2 @@@@@@@@@@@@@@@@@@@@@@@@\n")

#(a)
print("(a)\n")

def func(nombre):
    fp=open(nombre+".txt","r")
    lineas=fp.readlines()
    fp.close()
    fp2=open(nombre+"2.txt","w")
    for linea in lineas:
        linea=linea.split()
        media=(int(linea[1])+int(linea[2])+int(linea[3])+int(linea[4]))/4
        fp2.write(linea[0]+": "+str(media)+"\n")
    fp2.close()
    fp2=open(nombre+"2.txt","r")
    print(fp2.read())
    fp2.close()
func("alumnos")

#Devuelve la media de las 4 notas asignada a cada alumno

#(b)------------------------------------------------------------
print("(b)\n")
#>>
# Seguiría estando mal declarado, pero la intención que se observa es
# que al cambiar "w" por "a" del argumento, en vez de generar un nuevo
# fichero o borrar el existente, se añadirían los nuevos datos a este mismo.
#>>

################################# Ejercicio 3 (Acabado) #################################
print("@@@@@@@@@@@@@@@@@@@@@@@@ Ejercicio 3 @@@@@@@@@@@@@@@@@@@@@@@@\n")

nom=["Ander","Julen","Ane"]
num=["654237892","623418741","619773322"]

#(a)
print("(a)\n")

def listel(nom,num):
    final=""
    for i in range(len(nom)):
        final+= nom[i]+" "+num[i]+"\n"
    return final

print(listel(nom,num))

#(b)------------------------------------------------------------
print("(b)\n")

def listel2(fich_nom,fich_num):
    
    fp=open(fich_nom+".txt","r")
    lis_nom=fp.read().split("\n")
    fp.close()

    fp=open(fich_num+".txt","r")
    lis_num=fp.read().split("\n")
    return(listel(lis_nom,lis_num))

print(listel2("nombres","telefonos"))

    
#(c)------------------------------------------------------------
print("(c)\n")
def listel3(nom,num):
    dic={}
    for i in nom:
        dic[i]=num[nom.index(i)]
    return dic

print(listel3(nom,num),"\n")

#(d)------------------------------------------------------------
print("(d)\n")

def listel4(fich):
    d={}
    fp=open(fich+".txt","r")
    lineas=fp.read().split("\n")
    fp.close()
    for linea in lineas:
        lis_lin=linea.split()
        if lis_lin[0] not in d:
            d[lis_lin[0]]=[lis_lin[1]]
        else:
            d[lis_lin[0]].append(lis_lin[1])
    return d

print(listel4("nom_num"),"\n")
 
################################# Ejercicio 4 (Acabado)#################################
print("@@@@@@@@@@@@@@@@@@@@@@@@ Ejercicio 4 @@@@@@@@@@@@@@@@@@@@@@@@\n")

#(a)

print("(a)\n")

def func(lista):
    dicc={}
    for elem in lista:
        a=elem[0]
        b=elem[1]
    dicc[a]=dicc.get(a,0)+b
    return dicc
print(func([("a",3), ("b", 4), ("c", 0), ("a",2)]),"\n")

#(b)------------------------------------------------------------
print("(b)\n")

def sacar_valores(cadena):
    lista=[]
    car=[]
    for c in cadena:
        if c not in car:
            val=cadena.count(c)
            lista.append((c,val))
            car.append(c)
    return lista

def carac_apari(fich):
    d={}
    fp=open(fich+".txt","r")
    lineas=fp.read()
    fp.close()
    lista_carac=sacar_valores(lineas)
    for tupl_carac in lista_carac:
        i=0
        for carac in tupl_carac:
            if i==0:
                a=carac
            else:
                b=carac
            i+=1
        d[a]=b
    return d

print(carac_apari("nombres"))            

################################# Ejercicio 5 (Acabado)#################################
print("@@@@@@@@@@@@@@@@@@@@@@@@ Ejercicio 5 @@@@@@@@@@@@@@@@@@@@@@@@\n")

def matrix(M):
    maxifila=0
    index=0
    maxcolu=0
    for i in range(len(M)):
        longitud=len(M[i])
        sumafila=0
        if longitud!=len(M[0]):
            return ([],[])
        for j in range(len(M[i])):
            sumafila+=M[i][j]
        if sumafila>maxifila:
            maxifila=sumafila
            L1=M[i]
    while index<len(M[0]):
        sumacolu=0
        for i in range(len(M)):
            sumacolu+=M[i][index]
        if sumacolu>maxcolu:
            maxcolu=sumacolu
            L2=[]
            for i in range(len(M)):
                L2.append(M[i][index])
        index+=1              
    return (L1,L2)


M = [[2,5,3],[6,1,8],[9,3,2],[7, 5, 4]]
print(M,"\n")
print(matrix(M),"\n")
M = [[2,5],[6,1],[9,3,2,5],[7, 5, 4]]
print(M,"\n")
print(matrix(M),"\n")
