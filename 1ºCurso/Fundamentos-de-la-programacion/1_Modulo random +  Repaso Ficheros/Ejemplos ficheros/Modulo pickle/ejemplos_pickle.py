import pickle
import random

# Un primer ejemplo sencillo
x=-3.67
y=12.56

fp = open('datos1','wb')
pickle.dump(x,fp)
pickle.dump(y,fp)
fp.close()

fp = open('datos1','rb')
p = pickle.load(fp)
q = pickle.load(fp)
fp.close()

print("x: ",x)
print("y: ",y)
print("p: ",p)
print("q: ",q)

# Otro ejemplo, esta vez con una lista
l = []
for i in range(1000):
    l.append(random.gauss(0,10))

fp = open('datos2','wb')
pickle.dump(l,fp)
fp.close()

fp = open('datos2','rb')
l_new = pickle.load(fp)
fp.close()

if l == l_new:
    print("Lista recuperada íntegramente")
else:
    print("Error en el almacenamiento pickle de la lista")
