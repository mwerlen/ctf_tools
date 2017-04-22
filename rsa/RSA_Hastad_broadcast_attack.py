#!/usr/bin/env python

import argparse
import copy
import math
import pickle
import random
from itertools import combinations


def euclid(a, b):
    """returns the Greatest Common Divisor of a and b"""
    a = abs(a)
    b = abs(b)
    if a < b:
        a, b = b, a
    while b != 0:
        a, b = b, a % b
    return a


def coPrime(l):
    """returns 'True' if the values in the list L are all co-prime
       otherwise, it returns 'False'. """
    for i, j in combinations(l, 2):
        if euclid(i, j) != 1:
            return False
    return True


def extendedEuclid(a, b):
    """return a tuple of three values: x, y and z, such that x is
    the GCD of a and b, and x = y * a + z * b"""
    if a == 0:
        return b, 0, 1
    else:
        g, y, x = extendedEuclid(b % a, a)
        return g, x - (b // a) * y, y


def modInv(a, m):
    """returns the multiplicative inverse of a in modulo m as a
       positive value between zero and m-1"""
    # notice that a and m need to co-prime to each other.
    if coPrime([a, m]):
        linearCombination = extendedEuclid(a, m)
        return linearCombination[1] % m
    else:
        return 0


def extractTwos(m):
    """m is a positive integer. A tuple (s, d) of integers is returned
    such that m = (2 ** s) * d."""
    # the problem can be break down to count how many '0's are there in
    # the end of bin(m). This can be done this way: m & a stretch of '1's
    # which can be represent as (2 ** n) - 1.
    assert m >= 0
    i = 0
    while m & (2 ** i) == 0:
        i += 1
    return i, m >> i


def int2baseTwo(x):
    """x is a positive integer. Convert it to base two as a list of integers
    in reverse order as a list."""
    # repeating x >>= 1 and x & 1 will do the trick
    assert x >= 0
    bitInverse = []
    while x != 0:
        bitInverse.append(x & 1)
        x >>= 1
    return bitInverse


def modExp(a, d, n):
    """returns a ** d (mod n)"""
    assert d >= 0
    assert n >= 0
    base2D = int2baseTwo(d)
    base2DLength = len(base2D)
    modArray = []
    result = 1
    for i in range(1, base2DLength + 1):
        if i == 1:
            modArray.append(a % n)
        else:
            modArray.append((modArray[i - 2] ** 2) % n)
    for i in range(0, base2DLength):
        if base2D[i] == 1:
            result *= base2D[i] * modArray[i]
    return result % n

#########################################################################################

def stringtonumarray(string):
    return [ ord(char) for char in string ]

def stringtohex(string):
    return  ''.join(map(lambda x:'{0:x}'.format(int(x)),stringtonumarray(string)))

def stringtodecimal(string):
    return int(stringtohex(string),16)

def decimaltohex(decimal):
    return '{0:x}'.format(int(decimal))

def decimaltostring(decimal):
   return hextostring('{0:x}'.format(int(decimal))) 

def hextostring(hex):
    return hex.decode("hex")

def numArrayToString(numArray):
    return ''.join(map(lambda x: char(x)), numArray)

def encryptRSA(message, e, n):
    """given a string message, public keys, encrypt using RSA algorithms."""
    return stringtodecimal(message)** e % n

def decryptRSA(secret, d, n):
    """reverse function of encrypt"""
    return secret ** d % n

def find_invpow(x,n):
    """Finds the integer component of the n'th root of x,
    an integer such that y ** n <= x < (y + 1) ** n.
    """
    high = 1
    while high ** n < x:
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


def main():
    """
        https://crypto.stackexchange.com/questions/6713/low-public-exponent-attack-for-rsa    
    """

    e = 3 
    cb = 261345950255088824199206969589297492768083568554363001807292202086148198766487319457166401926551545151109098026058996468948583731482236623951529859018133353522151510006730449989443117787242210474753186824315213163862872301057620706372687683778738002221613793950793184020407053794922945550049200005037356171576
    nb = 1001191535967882284769094654562963158339094991366537360172618359025855097846977704928598237040115495676223744383629803332394884046043603063054821999994629411352862317941517957323746992871914047324555019615398720677218748535278252779545622933662625193622517947605928420931496443792865516592262228294965047903627
    cc = 147535246350781145803699087910221608128508531245679654307942476916759248537598403170076106575630165699159010125776778381148067440734881737955254787125295274917003578395507098724379568787243084218395137286419938619988307436493129916091673165202128342184862232497202397084217570750383567539697438549939198300065
    nc = 405864605704280029572517043538873770190562953923346989456102827133294619540434679181357855400199671537151039095796094162418263148474324455458511633891792967156338297585653540910958574924436510557629146762715107527852413979916669819333765187674010542434580990241759130158992365304284892615408513239024879592309 
    cd = 633230627388596886579908367739501184580838393691617645602928172655297372371614169085264699618154094108843199162386941382733831426893824086661881305133495694806288896065436554805338983106467014166909503023325865458774387526138478589388919787421461199308731526630536118270660740318460662900203271623078968788197
    nd = 1204664380009414697639782865058772653140636684336678901863196025928054706723976869222235722439176825580211657044153004521482757717615318907205106770256270292154250168657084197056536811063984234635803887040926920542363612936352393496049379544437329226857538524494283148837536712608224655107228808472106636903723
    """  
    cb = 330
    cc = 34
    cd = 419
    nb = 377
    nc = 391
    nd = 589
    """

    tb = cb * (nc * nd) * modInv((nc * nd),nb)
    tc = cc * (nb * nd) * modInv((nb * nd),nc)
    td = cd * (nb * nc) * modInv((nb * nc),nd)
    print("tb = "+str(tb)) 
    print("tc = "+str(tc)) 
    print("td = "+str(td)) 

    c = (tb + tc + td) % (nb * nc * nd)
    print("cipher : " + str(c))    
    m = find_invpow(c,3)   
    print("message (decimal) : "+str(m))
    print("message (hex) : "+str(decimaltohex(m)))
    print("message (ascii) : "+str(decimaltostring(m)))
    
    print("--------------")
    print("test")
    print(decimaltostring(stringtodecimal("test")))


if __name__ == '__main__':
    main()
