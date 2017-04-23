#!/usr/bin/python

from sympy.solvers import solve
from sympy import Symbol

def partial_quotiens(x, y):
        pq = []
        while x != 1:
                pq.append(x / y)
                a = y
                b = x % y
                x = a
                y = b
        #print pq
        return pq

def rational(pq):
        i = len(pq) - 1
        num = pq[i]
        denom = 1
        while i > 0:
                i -= 1
                a = (pq[i] * num) + denom
                b = num
                num = a
                denom = b
        #print (num, denom)
        return (num, denom)

def convergents(pq):
        c = []
        for i in range(1, len(pq)):
                c.append(rational(pq[0:i]))
        #print c
        return c

def phiN(e, d, k):
        return ((e * d) - 1) / k


def attack(e,n):
    pq = partial_quotiens(e, n)
    c = convergents(pq)
    x = Symbol('x')
    for (k, d) in c:
        if k != 0:
            y = n - phiN(e, d, k) + 1
            roots = solve(x**2 - y*x + n, x)
            if len(roots) == 2:
                p = roots[0]
                q = roots[1]
                if p * q == n:
                    print 'p = ', p
                    print 'q = ', q
                    break

e = 17993
n = 90581

attack(e,n)
