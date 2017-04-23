'''
  Some tools to solve challengesa

  Sources : 
    - https://jhafranco.com/2012/01/29/rsa-implementation-in-python/
'''


'''
  Translate integer to ascii given modulo size

'''
def int2Text(number, size):  
    text = "".join([chr((number >> j) & 0xff)
        for j in reversed(range(0, size << 3, 8))])
    return text.lstrip("\x00")

'''
  Translate integer to ascii withou modulo
'''
def int2Text(decimal):
   return ('{0:08X}'.format(int(decimal))).decode("hex")

'''
  Translate number to Hex
'''
def int2Hex(number):
   return '{0:06X}'.format(int(number))
    
'''
  Convert an integer into a list of small integers*
'''
def int2List(number, size):
    return [(number >> j) & 0xff
            for j in reversed(range(0, size << 3, 8))]


 
'''
  Convert a text string into an integer
'''
def text2Int(text):
    return reduce(lambda x, y : (x << 8) + y, map(ord, text))

'''
  Convert a test into a list of small integers
''' 
def text2List(string):
    return [ ord(char) for char in string ]

'''
  Convert a text into hex value (without Ox)
'''
def text2Hex(string):
    return  ''.join(map(lambda x:'{0:x}'.format(ord(x)),string))


'''
  Convert a hex to ascii
'''
def hex2text(hexNumber):
    return hexNumber.strip().decode("hex")


'''
  Convert a list of integer to a text
'''
def list2Text(list):
    return ''.join(map(lambda x: char(x)), list)

'''
  Convert a list of small integers into an integer
'''
def list2Int(listInt):
    return reduce(lambda x, y : (x << 8) + y, listInt)
 
