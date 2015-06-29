'''
Implement a function with signature find_chars(string1, string2)
that takes two strings and returns a string that contains only
the characters found in string1 and string two in the order that
they are found in string1. Implement a version of order N*N and
one of order N.
'''


def find_chars(s1 , s2):
    count = 0
    for i in s1:
         print "first items :",i       
    for j in s2:
        print "second items :",j

        if i == j:
            print "common items are :"
            print i,j


find_chars("sathya", "pani")

