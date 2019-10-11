# Ejercicios de repaso

# Ejercicio 1: función que calcula el máximo de una función
#              en un intervalo [a,b]

# Este código está basado en la entrega de Jaime López.
# Se han añadido algunos cambios para mejorar la legibilidad
# y la eficiencia

def maxfun(funcion, a, b, num_dec=8, num_samples=100):
    n = 0
    precision = 1/10**num_dec
    while abs(a-b)>precision:
        incr = (b-a)/(num_samples-1)
        inter = []
        for i in range(num_samples):
            inter.append(a+incr*i)
        val=[]
        for x in inter:
            val.append(funcion(x))
        n += len(inter)
        m = max(val)        # valor del máximo
        idx = val.index(m)  # posición del máximo
        if idx==0:
            b = inter[1]
        elif idx==num_samples-1:
            a = inter[num_samples-2]
        else:
            a = inter[idx-1]
            b = inter[idx+1]
    print("Número de llamadas a la función {}: {}".format(funcion.__name__,n))
    return round(m,num_dec), round(inter[idx],num_dec)

# Ejemplos de aplicación

# Comprobar el funcionamiento con distintos valores de num_dec y num_samples

# (1) Esta función tiene varios máximos locales en el tramo [-1,5]
#     El máximo absoluto (24.5822616) se alcanza en el punto 2.884422
def poli1(x):
    return -0.5*x*(x-1)*(x+1)*(x-2)*(x-4)*(x-4)*(x-5)

fm, xm = maxfun(poli1,-1,5)
print("Max: {:.8f} en x: {:.8f}".format(fm,xm))

# (2) En el tramo [-1,3], poli2 tiene un mínimo en -0.5 y un máximo en 2.0
def poli2(x):
    return -0.6666*x**3+1.5*x**2+2*x+1

fm, xm = maxfun(poli2,-1,3)
print("Max: {:.8f} en x: {:.8f}".format(fm,xm))

