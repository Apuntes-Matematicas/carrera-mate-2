import random

def rndstr(n):
    s = ""
    nletras = ord('z') - ord('a') + 1
    for i in range(n):
        s = s + chr(int(random.random()*1000) % nletras + ord('a'))
    return s

print("Lista original")
l=[]
for i in range(5):
    tupla = (i,rndstr(10))
    l.append(tupla)
    print(tupla)

fp=open("lista.txt","w")
for item in l:
    fp.write(repr(item)+'\n')
fp.close()

print("\nLista recuperada del fichero")
l_new=[]
fp=open("lista.txt","r")
for line in fp:
    tupla = eval(line)
    l_new.append(tupla)
    print(tupla)
fp.close()
