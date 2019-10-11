import random
import string

def rndstr(n):
    result = ''
    s = string.ascii_letters + string.digits
    for i in range(n):
        result = result + random.choice(s)
    return result

for i in range(10):
    print(rndstr(8))
