def init_java(size):
    global BASE
    BASE=size

def java_hash(s):
    h=0
    for c in s:
        h=(31*h+ord(c))%BASE
    return h

init_java(256)
while True:
    print(java_hash(input("Cadena: ")))
