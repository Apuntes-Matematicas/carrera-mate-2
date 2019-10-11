import random

def init_T(n): 
    T=[]
    for i in range(n):
        T.append(i)
    random.shuffle(T)
    return T

n=int(input("n: "))
T=init_T(n)
print(T)
