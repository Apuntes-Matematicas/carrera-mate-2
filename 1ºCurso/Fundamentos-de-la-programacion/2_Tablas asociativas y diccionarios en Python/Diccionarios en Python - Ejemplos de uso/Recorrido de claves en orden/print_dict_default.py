# from collections import OrderedDict

def histogram_d(s):
    d = dict()
    # d = OrderedDict()
    for k in s:
        d[k]=d.get(k,0)+1
    return d

def print_dict(d):
    for k in d:
        print("{}: {}".format(k,d[k]))

s = input("Cadena: ")
h = histogram_d(s)
print_dict(h)
