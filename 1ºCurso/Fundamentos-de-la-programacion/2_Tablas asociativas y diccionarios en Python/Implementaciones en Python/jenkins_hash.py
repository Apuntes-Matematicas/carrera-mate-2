def init_jenkins(size):
    global BASE
    BASE=size

def jenkins_hash(s):
    h=0
    for c in s:
        h=(h+ord(c))%BASE
        h=(h+(h<<10)%BASE)%BASE
        h^=(h>>6)
    h=(h+(h<<3)%BASE)%BASE
    h^=(h>>11)
    h=(h+(h<<15)%BASE)%BASE
    return h

init_jenkins(256)
while True:
    print(jenkins_hash(input("Cadena: ")))
