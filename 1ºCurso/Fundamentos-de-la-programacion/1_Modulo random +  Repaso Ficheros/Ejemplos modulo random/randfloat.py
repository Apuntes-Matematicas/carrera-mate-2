import random

def randfloat(x,y):
    return random.random() * (y-x) + x

for i in range(10):
    print(randfloat(23.1217,56.37))
