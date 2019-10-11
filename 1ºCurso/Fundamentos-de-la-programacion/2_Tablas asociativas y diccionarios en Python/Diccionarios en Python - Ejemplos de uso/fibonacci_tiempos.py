import time

def fib_r(n):
    if n<2:
        return n
    return fib_r(n-1)+fib_r(n-2)

# Requiere definir una variable global f_d (diccionario)
def fib_d(n):
    if not n in f_d:
        f_d[n]=fib_d(n-1)+fib_d(n-2)
    return f_d[n]

def fib_i(n):
    if n<2:
        return n
    f1=1
    f2=0
    for i in range(2,n+1):
        f=f1+f2
        f2=f1
        f1=f
    return f

print("{0:>10s}: {1:>14s} {2:>14s} {3:>14s}".format("n","t_rec","t_dict","t_ite"))
for n in range(4,41,4):
    t1=time.process_time()
    f=fib_r(n)
    t2=time.process_time()
    f_d={0:0,1:1}  # MUY IMPORTANTE !!!
    f=fib_d(n)
    t3=time.process_time()
    f=fib_i(n)
    t4=time.process_time()
    print("{0:10d}: {1:14.10f} {2:14.10f} {3:14.10f}".format(n,t2-t1,t3-t2,t4-t3))

# A continuación se muestra la salida que se obtiene al ejecutar el programa
# Obsérvese el rápido crecimiento del coste de la versión recursiva,
# mientras que la versión basada en diccionario apenas es un poco más costosa
# que la versión iterativa óptima (ambas de coste lineal)

##         n:          t_rec         t_dict          t_ite
##         4:   0.0000120000   0.0000080000   0.0000060000
##         8:   0.0000220000   0.0000120000   0.0000090000
##        12:   0.0001010000   0.0000130000   0.0000080000
##        16:   0.0005750000   0.0000180000   0.0000060000
##        20:   0.0039610000   0.0000210000   0.0000150000
##        24:   0.0258270000   0.0000460000   0.0000100000
##        28:   0.1783330000   0.0000360000   0.0000090000
##        32:   1.2087060000   0.0000420000   0.0000110000
##        36:   8.5530340000   0.0000450000   0.0000130000
##        40:  57.5704620000   0.0000430000   0.0000110000

