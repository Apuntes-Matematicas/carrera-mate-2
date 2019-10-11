# Ejercicios de repaso

# Ejercicio 1: función que calcula el máximo de una función
#              en un intervalo [a,b]

def get_max(f, a, b, inc=0.001):
    fmax=f(a)
    xmax=a
    n=1
    x=a
    while x<b:
        x=x+inc
        y=f(x)
        n+=1
        if y>fmax:
            fmax=y
            xmax=x
    print("Número de llamadas a la función {}: {}".format(f.__name__,n))
    return fmax,xmax

# Ejemplos de aplicación

# Comprobar el funcionamiento con distintos valores de inc

# (1) Esta función tiene varios máximos locales en el tramo [-1,5]
#     El máximo absoluto (24.5822616) se alcanza en el punto 2.884422
def poli1(x):
    return -0.5*x*(x-1)*(x+1)*(x-2)*(x-4)*(x-4)*(x-5)

fm, xm = get_max(poli1,-1,5)
print("Max: {:.8f} en x: {:.8f}".format(fm,xm))

# (2) En el tramo [-1,3], poli2 tiene un mínimo en -0.5 y un máximo en 2.0
def poli2(x):
    return -0.6666*x**3+1.5*x**2+2*x+1

fm, xm = get_max(poli2,-1,3)
print("Max: {:.8f} en x: {:.8f}".format(fm,xm))
