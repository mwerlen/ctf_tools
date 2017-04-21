import random

def egcd(a,b):
    '''
    Extended Euclidean Algorithm
    returns x, y, gcd(a,b) such that ax + by = gcd(a,b)
    '''
    u, u1 = 1, 0
    v, v1 = 0, 1
    while b:
        q = a // b
        u, u1 = u1, u - q * u1
        v, v1 = v1, v - q * v1
        a, b = b, a - q * b
    return u, v, a

def gcd(a,b):
    '''
    2.8 times faster than egcd(a,b)[2]
    '''
    a,b=(b,a) if a<b else (a,b)
    while b:
        a,b=b,a%b
    return a

def modInverse(e,n):
    '''
    d such that de = 1 (mod n)
    e must be coprime to n
    this is assumed to be true
    '''
    return egcd(e,n)[0]%n

def totient(p,q):
    '''
    Calculates the totient of pq
    '''
    return (p-1)*(q-1)


'''
Euclid's extended algorithm for finding the multiplicative inverse of two numbers
'''
def multiplicative_inverse(e, phi):
    d = 0
    x1 = 0
    x2 = 1
    y1 = 1
    temp_phi = phi
    
    while e > 0:
        temp1 = temp_phi/e
        temp2 = temp_phi - temp1 * e
        temp_phi = e
        e = temp2
        
        x = x2- temp1* x1
        y = d - temp1 * y1
        
        x2 = x1
        x1 = x
        d = y1
        y1 = y
    
    if temp_phi == 1:
        return d + phi

'''
Tests to see if a number is prime.
'''
def is_prime(num):
    if num == 2:
        return True
    if num < 2 or num % 2 == 0:
        return False
    for n in xrange(3, int(num**0.5)+2, 2):
        if num % n == 0:
            return False
    return True

def find_invpow(x,n):
    """Finds the integer component of the n'th root of x,
    an integer such that y ** n <= x < (y + 1) ** n.
    """
    high = 1
    while high ** n <= x:
        high *= 2
    low = high/2
    while low < high:
        mid = (low + high) // 2
        if low < mid and mid**n < x:
            low = mid
        elif high > mid and mid**n > x:
            high = mid
        else:
            return mid
    return mid + 1

def coprime(a, b):
    return bltin_gcd(a, b) == 1

def stringtonumarray(string):
    return [ ord(char) for char in string ]

def stringtohex(string):
    return  ''.join(map(lambda x:'{0:x}'.format(int(x)),stringtonumarray(string)))

def stringtodecimal(string):
    return int(stringtohex(string),16)

def decimaltohex(decimal):
    return '{0:06X}'.format(int(decimal))

def decimaltostring(decimal):
   return hextostring('{0:08X}'.format(int(decimal))) 

def hextostring(hexNumber):
    return hexNumber.strip().decode("hex")

def numArrayToString(numArray):
    return ''.join(map(lambda x: char(x)), numArray)

def int2Text(number, size):
    text = "".join([chr((number >> j) & 0xff)
                    for j in reversed(range(0, size << 3, 8))])
    return text.lstrip("\x00")

def main():
    """
    c= 95272795986475189505518980251137003509292621140166383887854853863720692420204142448424074834657149326853553097626486371206617513769930277580823116437975487148956107509247564965652417450550680181691869432067892028368985007229633943149091684419834136214793476910417359537696632874045272326665036717324623992885
    p= 11387480584909854985125335848240384226653929942757756384489381242206157197986555243995335158328781970310603060671486688856263776452654268043936036556215243
    q= 12972222875218086547425818961477257915105515705982283726851833508079600460542479267972050216838604649742870515200462359007315431848784163790312424462439629
    dp= 8191957726161111880866028229950166742224147653136894248088678244548815086744810656765529876284622829884409590596114090872889522887052772791407131880103961
    dq= 3570695757580148093370242608506191464756425954703930236924583065811730548932270595568088372441809535917032142349986828862994856575730078580414026791444659
    """
    p = 137
    q = 131
    c = 8363
    dp = 91
    dq = 87
    
    n = p*q
    phiN = (p-1)*(q-1)
    qInv = multiplicative_inverse(q,p)    
    print("c : " + str(c))
    print("p : " + str(p))
    print("q : " + str(q))
    print("dp : " + str(dp))
    print("dq : " + str(dq))
    print("qInv : " + str(qInv))
    print("n : " + str(n))
    print("phiN : " + str(phiN))

    m1 = pow(c, dp, p)
    print("m1 : " + str(m1))
    m2 = pow(c, dq, q)
    print("m2 : " + str(m2))
    h = qInv * ( m1 + p - m2 ) % p
    print("h : " + str(h))
    m = m2 + (h * q)
    print("m : " + str(m))

    print("Message (decimal) : "+str(m))
    print("Message (hex) : "+decimaltohex(m))
    print("Message : "+decimaltostring(m))

if __name__ == '__main__':
    main()
