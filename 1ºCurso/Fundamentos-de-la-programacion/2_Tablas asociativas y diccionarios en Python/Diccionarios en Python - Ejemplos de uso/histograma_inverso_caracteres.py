def histogram_d(s):
    d=dict()
    for k in s:
        d[k]=d.get(k,0)+1
    return d

def print_dict(d):
    for k in d:
        print("{}: {}".format(k,d[k]))

# (1) Aproximacion básica
def inv_histo_basica(h):
    inv=dict()
    for c in h:
        n=h[c]
        if n in inv:
            inv[n].append(c)
        else:
            inv[n]=[c]
    return inv

# (2) Aproximacion compacta
def inv_histo_compacta(h):
    inv=dict()
    for c in h:
        n=h[c]
        inv.setdefault(n,[]).append(c)
    return inv

s="la catapulta de los romanos lanzaba piedras ardiendo"
print(s)
h=histogram_d(s)

ihb=inv_histo_basica(h)
print("Histograma inverso: versión básica")
print_dict(ihb)

ihc=inv_histo_compacta(h)
print("Histograma inverso: versión compacta")
print_dict(ihc)
