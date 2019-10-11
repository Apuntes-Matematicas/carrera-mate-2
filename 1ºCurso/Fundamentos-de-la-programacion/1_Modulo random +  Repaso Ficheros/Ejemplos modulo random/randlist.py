import random

def randlist(x,n,k):
    result = list()
    for i in range(n):
        result.append(random.sample(x,k))
    return result

x = ["Kepa", 56, 77.87, "Gernika", 12,4, 0.003, "Joana", "Bilbao"]
r = randlist(x,5,3)
for i in range(5):
    print(r[i])
