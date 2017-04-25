#!/usr/bin/python

import urllib, urllib2
from subprocess import call
from subprocess import Popen, PIPE, STDOUT


def char_range(c1, c2):
    """Generates the characters from `c1` to `c2`, inclusive."""
    for c in xrange(ord(c1), ord(c2)+1):
        yield chr(c)

def majuscule():
    for c in xrange(ord('A'), ord('Z')+1):
        yield chr(c)

def makeRequest(flag,guess,length):
    p = Popen(['./MuchAdoAboutHacking'], stdout=PIPE, stdin=PIPE, stderr=PIPE)
    trial = (flag+"t").rjust(length,"_")
    response = p.communicate(input=trial+" ")[0]
    print trial + "->" + response
    print response[:(len(flag)+1)] + "==" + guess[:(len(flag)+1)] + " ?"
    if response[:len(flag)+1] == guess[:len(flag)+1]:
        return True
    return False

def findNext(flag,guess,length):
    for car in char_range(' ','~'):
        if makeRequest(car+flag,guess,length):
            return car+flag;

def main():
    flag=""
    result="tu1|\h+&g\OP7@% :BH7M6m3g="
    for x in range(len(flag), len(result)):
        print "Trying to guess "+result
        flag = findNext(flag,result,len(result))
        print "Found "+flag+" "+str(len(flag))+"/"+str(len(result))
    print "Found : "+flag


if __name__ == "__main__":
    main()
