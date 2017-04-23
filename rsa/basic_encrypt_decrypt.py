from tools.rsa_functions import *
from tools.conversions import *

'''
    Key Definition
'''
print('-'*16)
print("Key definition")
print('-'*16)

e = 65537
print("e : " + str(e))

p = 12131072439211271897323671531612440428472427633701410925634549312301964373042085619324197365322416866541017057361365214171711713797974299334871062829803541
print("p : " + str(p))

q = 12027524255478748885956220793734512128733387803682075433653899983955179850988797899869146900809131611153346817050832096022160146366346391812470987105415233
print("q : " + str(q))

n = p*q
print("n : " + str(n))

phiN = (p-1)*(q-1)
print("phiN : " + str(phiN))

d = 89489425009274444368228545921773093919669586065884257445497854456487674839629818390934941973262879616797970608917283679875499331574161113854088813275488110588247193077582527278437906504015680623423550067240042466665654232383502922215493623289472138866445818789127946123407807725702626644091036502372545139713

'''
    Encryption
'''
print
print('-'*16)
print("Encryption")
print('-'*16)

mInit = "This is a test !"
mInitDecimal=text2Int(mInit)
print("Message : "+str(mInit))
print("Message (hex) : "+str(text2Hex(mInit)))
print("Message (decimal) : "+str(text2Int(mInit)))

if( mInitDecimal > n):
    print("[WARNING] Do not use basic RSA with message longer than modulo !")

c = pow(mInitDecimal, e, n)
print("c : " + str(c))


'''
    Decryption
'''
print
print('-'*16)
print("Decryption")
print('-'*16)

m = pow(c, d, n)
print("m : " + str(m))

print("Message (decimal) : "+str(m))
print("Message (hex) : "+int2Hex(m))
print("Message : "+int2Text(m))
