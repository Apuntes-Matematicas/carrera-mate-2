def get_seq_int(x): # x es un objeto cualquiera
    s=repr(x)       # s es la cadena que representa x
    seq=[]          # seq es una lista de enteros
    for c in s:
        seq.append(ord(c))
    return seq

x="Esto es una cadena ejemplo, con caracteres diversos: -+*#_/&%"
s=get_seq_int(x)
print(s)
