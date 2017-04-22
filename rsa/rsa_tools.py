'''
    Some tools to solve RSA challenges
'''

import random


'''
Translate integer to ascii
'''
def int2Text(number, size):  
    text = "".join([chr((number >> j) & 0xff)
        for j in reversed(range(0, size << 3, 8))])
    return text.lstrip("\x00")

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

