# ejercicio 1 (Acabado)
print("################################ Ejercicio 1 ################################","\n")
def dosomas(s1,s2):
    
    for c in s1:
        if s2.count(c)>=2:
            return False
    return True
print("Cadena ---> desdentado   Subcadena ---> de","\n")
print(dosomas("ae","desdentado"),"\n")
print("Cadena ---> desdentado   Subcadena ---> iw","\n")
print(dosomas("iw","desdentado"),"\n")
# ejercicio 2 (Acabado)
print("################################ Ejercicio 2 ################################","\n")
def swap_pos(s,l):
    for i in range(len(l)//2):
        a=l[2*i]
        b=l[2*i+1]
        if a<b:
            s=s[:a]+s[b]+s[a+1:b]+s[a]+s[b+1:]
        else:
            s=s[:b]+s[a]+s[b+1:a]+s[b]+s[a+1:]
    return s

def swap_pos2(s,l):
    for i in range(len(l)//2):
        i=len(l)//2-i-1
        a=l[2*i]
        b=l[2*i+1]
        if a<b:
            s=s[:a]+s[b]+s[a+1:b]+s[a]+s[b+1:]
        else:
            s=s[:b]+s[a]+s[b+1:a]+s[b]+s[a+1:]
    return s
l=[4,0,5,8,11,4]
s='tienes dos horas'
print("Alteraciones: ",l,"\n")
print(s," -----> ",swap_pos(s,l),"\n")

s=swap_pos(s,l)
print(s," -----> ",swap_pos2(s,l),"\n")
# ejercicio 3 (Acabado)
print("################################ Ejercicio 3 ################################","\n")
def lrot(s,n):
    alf="abcdefghijklmnñopqrstuvwxyzabcdefghijklmnñopqrstuvwxyz"
    for letra in s:
        s=s[:s.find(letra)]+alf[alf.find(letra)-n]+s[s.find(letra)+1:]
    return s
def rrot(s,n):
    alf="abcdefghijklmnñopqrstuvwxyzabcdefghijklmnñopqrstuvwxyz"
    for letra in s:
        s=s[:s.find(letra)]+alf[alf.find(letra)+n]+s[s.find(letra)+1:]
    return s
    
cadena="yz"
print(cadena,"--->",lrot(cadena,3),"\n")
print(cadena,"--->",rrot(cadena,3),"\n")

# ejercicio 4 (Acabado)
print("################################ Ejercicio 4 ################################","\n")
def find_all(t, s, overlaps=True):
    if t in s:
        lista=[]
        ultima_pos=s.find(t)
        if overlaps:
            while ultima_pos>=0:
                lista.append(ultima_pos)
                ultima_pos=s.find(t,ultima_pos+1)
            return lista
        elif not overlaps:
            while ultima_pos>=0:
                lista.append(ultima_pos)
                ultima_pos=s.find(t,ultima_pos+len(t))
            return lista
    else:
        return("La subcadena no se encuentra dentro de la cadena")
print("aba"," --- in ----> ","abbbbabbababababb","\n")
print("Overlaps=True : ",find_all("aba","abbbbabbababababb"),"\n")      
print("Overlaps=False : ",find_all("aba","abbbbabbababababb",False),"\n")

# ejercicio 5 (Acabado)
print("################################ Ejercicio 5 ################################","\n")

def my_splits(s,sep_seq="\n\t",max_splits=None):
    lista=[]
    if max_splits==None or max_splits-1>=s.count(sep_seq):
        while sep_seq in s:
            lista.append(s[:s.find(sep_seq)])
            s=s[s.find(sep_seq)+len(sep_seq):]
        lista.append(s)
    else:
        while len(lista)!=max_splits-1:
            lista.append(s[:s.find(sep_seq)])
            s=s[s.find(sep_seq)+len(sep_seq):]
        lista.append(s)
    return lista



s="Hola que pasa mundo"
print("Cadena ---> ","Hola que pasa mundo","\n")
print("Separador ---> ","\" \""," ---> maxsplits=3","\n")
print(my_splits(s," ",3))



