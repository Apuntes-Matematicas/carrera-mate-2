################################ Ejercicio 1 (Acabado) ################################
print("################################ Ejercicio 1 ################################","\n")
def prohibidos(cadena,fich1,fich2):
    fp=open(fich1+".txt","r")
    lineas=fp.read().split("\n")
    fp.close()
    fp=open(fich2+".txt","w")
    i=0
    for linea in lineas:
        fp.write("Las palabras de la linea {0} que no contienen caracteres prohibidos son: ".format(i))
        lis_permitidas=[]
        lis_linea=linea.split() #Obtenemos las palabras de la linea i en una lista
        for j in range(len(lis_linea)): # Vamos a recorrer cada palabra
            prohibida=None
            for h in range(len(lis_linea[j])):
                if lis_linea[j][h] in cadena:
                    prohibida=True
            if prohibida!=True:
                lis_permitidas.append(lis_linea[j])
        for h in range(len(lis_permitidas)):
            fp.write(lis_permitidas[h]+" ")
        fp.write("\n")    
        i+=1
    fp.close()
cadena=input("Introduzca la cadena de caracteres prohibidos deseada --->")
fich1="texto_prohibidas"
fich2="resultado_prohibidas"
print(prohibidos(cadena,fich1,fich2))
################################ Ejercicio 2 (Acabado) ################################
print("################################ Ejercicio 2 ################################","\n")

def permitidas(cadena,fich1,fich2):
    fp=open(fich1+".txt","r")
    lis_linea= fp.read().split("\n")
    fp.close()
    i=0
    lista=[]
    for linea in lis_linea:
        permitidas=0
        palabras=linea.split() #obtenemos una lista con cada palabra de la fila i
        for palabra in palabras: #Recorremos cada palabra de la lista de palabras de la filai
            si=0 #si se convierte en 1 es porque hay una palabra no permitida
            j=0 #indica la posición de letra a estudiar dentro de palabra
            while si==0 and j<len(palabra): #Aquí comprobamos que cada caracter de palabra esta permitido
                if palabra[j] not in cadena:
                    si=1
                j+=1
            if si==0:
                permitidas+=1
        porcentaje=permitidas*100/len(palabras)
        lista.append("En la fila {0} el {1}% de las palabras contienen solo caracteres permitidos".format(i,porcentaje))
        i+=1
    fp=open(fich2+".txt","w")
    for i in range(len(lista)):
        fp.write(lista[i]+"\n")
    fp.close()
cadena=input("Introduzca una cadena con los caracteres permitidos --->")
print("\n")
fich1="permitidas_texto"
fich2="permitidas_resultado"
permitidas(cadena,fich1,fich2)
print("-------------------------------- EL PROGRAMA SE EJECUTÓ CORRECTAMENTE, YA TIENE LISTOS LOS PORCENTAJES DESEADOS --------------------------------","\n")
################################ Ejercicio 3 (Acabado) ################################
print("################################ Ejercicio 3 ################################","\n")
def obligatorias(obli,t):
    for i in range(len(obli)):
        if obli[i] not in t:
            return False
    return True

def fich_obligatorias(cad_obli,fich1,fich2):
    fp=open(fich1+".txt","r")
    palabras=fp.read().split()
    fp.close()
    dic={}
    for palabra in palabras:
        if obligatorias(cad_obli,palabra) and palabra not in dic:
                dic[palabra]= palabras.count(palabra)
    fp=open(fich2+".txt","w")
    for palabra in dic:
        fp.write("La palabra --> {0} <-- se repite {1} veces en el fichero\n".format(palabra,dic[palabra]))
    fp.close()

cadena=input("Introduzca una cadena con los caracteres obligatorios --->")
print("\n")
fich1="obligatorias_texto"
fich2="obligatorias_resultado"
                 
fich_obligatorias(cadena,fich1,fich2)
print("-------------------------------- EL PROGRAMA SE EJECUTÓ CORRECTAMENTE, YA TIENE LISTO EL FICHERO DESEADOS --------------------------------","\n")
################################ Ejercicio 4 (Acabado) ################################
print("################################ Ejercicio 4 ################################","\n")
def lis_ale_lower():  #Genera una lista con 1000 cadenas de minusculas de entre 5 y 10 de logi
    import random
    import string
    lista=[]
    for i in range(1000):
        cadena=""
        lista.append([])
        longitud=random.randint(5,10)
        lis2=random.sample(string.ascii_lowercase,longitud)
        for letra in lis2:
            cadena+=letra
        lista[i].append(cadena)
    return lista

def fich_alea_pickle(fich):
    import pickle
    fp=open(fich+".txt","wb")
    pickle.dump(lis_ale_lower(),fp)
    pickle.dump(lis_ale_lower(),fp)
    fp.close()

def prom_pickle_cad(fich):
    import pickle
    suma=0
    fp=open(fich+".txt","rb")
    lista1=pickle.load(fp)
    lista2=pickle.load(fp)
    fp.close()
    for i in range(len(lista1)):
        comun_num=0
        comun_cad=""
        for j in range(len(lista1[i][0])):
            if lista1[i][0][j] in lista2[i][0] and lista1[i][0][j] not in comun_cad:
                comun_num+=1
                comun_cad+=lista1[i][0][j]  
        suma+=comun_num
    return(suma/len(lista1))

fich="pickle"
fich_alea_pickle(fich)
print(prom_pickle_cad(fich))
    

