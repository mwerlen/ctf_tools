#!/usr/bin/python

import urllib, urllib2, sys
from subprocess import call
from subprocess import Popen, PIPE, STDOUT
from PIL import Image
from collections import defaultdict
import binascii

def main():
    im = Image.open('nowYouDont.png')
#    by_color = defaultdict(int)
#    for pixel in im.getdata():
#        by_color[pixel] += 1   
    colors = im.getcolors()
    word = ""
    bit = ""
    for pixel in im.getdata():
        for i, color in enumerate(colors):
            if color[1] == pixel:
                bit += str((i+0)%2)
            if len(bit) == 4:
                if bit=="0000":
                    word += "0"
                    bit =""
                elif bit=="1111":
                    word += "1"
                    bit =""
                else:
                    print("oups" + bit)
                    bit = bit[1:]
        if len(word) == 8:
            if word != "1"*len(word) and word != "0"*len(word):
                n = int("0b"+word,2)
                #if(n>64 and n<127):
                if(n>=16):
                    letter = chr(n)
                    #print(word + " -> " + str(n) + " -> " + letter)
                    sys.stdout.write(letter)
            word = ""
#        print by_color.index(pixel)

    width, height = im.size
    new_img = Image.new('RGB', (width,height), "black")
    for x in range(width):
        for y in range(height):
            pixel = im.getpixel((x,y));
            if color[1] == pixel:
                new_img.putpixel((x,y), (0,0,0))
            else:
                new_img.putpixel((x,y), (255,255,255))

    new_img.save('ou.png')

if __name__ == "__main__":
    main()
