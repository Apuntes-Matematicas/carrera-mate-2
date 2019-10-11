import time

MAX_CHAR_CODE=256

def histogram_cnt(s):
    count=[]
    for i in range(MAX_CHAR_CODE):
        count.insert(i,0)
    for c in s:
        count[ord(c)]+=1
    return count
    
def histogram_d(s):
    d=dict()
    for k in s:
        d[k]=d.get(k,0)+1
    return d

def histogram_l(s):
    l=list()
    for c in s:
        i=0
        while i<len(l):
            if l[i][0]==c:
                break
            i=i+1
        if i==len(l):
            l.append((c,1))
        else:
            l[i]=(c,l[i][1]+1)
    return l
    
t1=time.process_time()
histogram_cnt("la catapulta de los romanos lanzaba piedras ardiendo"*10000)
t2=time.process_time()
histogram_d("la catapulta de los romanos lanzaba piedras ardiendo"*10000)
t3=time.process_time()
histogram_l("la catapulta de los romanos lanzaba piedras ardiendo"*10000)
t4=time.process_time()

print("Mediante contadores: {0:10.6f} segundos".format(t2-t1))
print("Mediante diccionario: {0:10.6f} segundos".format(t3-t2))
print("Mediante lista: {0:10.6f} segundos".format(t4-t3))
