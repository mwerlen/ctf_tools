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

e = 3 
c1 = 261345950255088824199206969589297492768083568554363001807292202086148198766487319457166401926551545151109098026058996468948583731482236623951529859018133353522151510006730449989443117787242210474753186824315213163862872301057620706372687683778738002221613793950793184020407053794922945550049200005037356171576
n1 = 1001191535967882284769094654562963158339094991366537360172618359025855097846977704928598237040115495676223744383629803332394884046043603063054821999994629411352862317941517957323746992871914047324555019615398720677218748535278252779545622933662625193622517947605928420931496443792865516592262228294965047903627
c2 = 147535246350781145803699087910221608128508531245679654307942476916759248537598403170076106575630165699159010125776778381148067440734881737955254787125295274917003578395507098724379568787243084218395137286419938619988307436493129916091673165202128342184862232497202397084217570750383567539697438549939198300065
n2 = 405864605704280029572517043538873770190562953923346989456102827133294619540434679181357855400199671537151039095796094162418263148474324455458511633891792967156338297585653540910958574924436510557629146762715107527852413979916669819333765187674010542434580990241759130158992365304284892615408513239024879592309 
c3 = 633230627388596886579908367739501184580838393691617645602928172655297372371614169085264699618154094108843199162386941382733831426893824086661881305133495694806288896065436554805338983106467014166909503023325865458774387526138478589388919787421461199308731526630536118270660740318460662900203271623078968788197
n3 = 1204664380009414697639782865058772653140636684336678901863196025928054706723976869222235722439176825580211657044153004521482757717615318907205106770256270292154250168657084197056536811063984234635803887040926920542363612936352393496049379544437329226857538524494283148837536712608224655107228808472106636903723 

attack(e,n1)
attack(e,n2)
attack(e,n3)