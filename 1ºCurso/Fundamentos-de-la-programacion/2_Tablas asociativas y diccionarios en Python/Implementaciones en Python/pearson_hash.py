import random

def rndperm(size):
    l=list(range(size))
    random.shuffle(l)
    return l

def init_pearson(size):
    global TSIZE
    global t
    TSIZE=size
    t=rndperm(TSIZE)

def pearson_hash(s):
    h=0
    for c in s:
        index=(h^ord(c))%TSIZE
        h=t[index]
    return h

init_pearson(256)
while True:
    print(pearson_hash(input("Cadena: ")))
