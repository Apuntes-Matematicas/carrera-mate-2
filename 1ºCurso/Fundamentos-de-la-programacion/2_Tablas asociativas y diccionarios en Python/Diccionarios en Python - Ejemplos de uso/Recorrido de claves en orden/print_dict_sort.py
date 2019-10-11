def histogram(fichero):
    h=dict()
    fp=open(fichero,"r",encoding="utf-8")
    for linea in fp:
        for w in linea.split():
            h[w]=h.get(w,0)+1
    fp.close()
    return h

def print_dict(d):
    l=list(d.keys())
    l.sort()
    for k in l:
        print("{}: {}".format(k,d[k]))

file=input("Fichero: ")
h=histogram(file)
print_dict(h)
