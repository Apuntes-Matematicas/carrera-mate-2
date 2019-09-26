#Functions
def main():
    print("\n------ RADIX CONVERSION ------\n")
    while(True):
        base = int(input("Itroduce the base:\n--> "))
        
        ''' Numbers should be introduced as: 234.12, 0.1983, 1342.0, etc '''
        number = input("\nIntroduce the positive number as integer.floating:\n--> ").split(".")

        result = base_to_decimal(number, base)

        print("\nThe number {0}.{1} in base {2} equals\n{3} in base ten.\n".format(number[0],number[1],base,result))

def int_to_decimal(integer, base):    
    length = len(integer)
    power = 1
    result = 0
    
    for i in range(length):
        result += int(integer[length-i-1]) * power
        power *= base

    return result

def float_to_decimal(floating, base):
    length = len(floating)
    power = 1 / base
    result = 0

    for i in range(length):
        result += int(floating[i]) * power
        power *= 1 / base

    return result

def base_to_decimal(number, base):
    result = 0

    result += int_to_decimal(number[0], base)
    result += float_to_decimal(number[1], base)

    return result

def decimal_to_int(integer, base):
    result = []
    c = integer // base
    r = str(integer % base)

    while c > 0:
        result.append[r]
        r = str(c % base)
        c = c // base

    result.reverse()
    
    return "".join(result)

#Main Program
main()

