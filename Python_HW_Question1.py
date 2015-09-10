'''
Question 1 ( (4 points):  You are given a list = [1,3,4,6,34,33,31,25].
Write a Python program to create one list of odd numbers and one list 
of even numbers using list comprehension.
'''
 
list = [1,3,4,6,34,33,31,25]
 
even = [var for var in list if var % 2 == 0]
print "Even numbers are : ",even
        
print        
odd = [y for y in list if y % 2 == 1]
print "Odd numbers are : ",odd
 
''' 
Output :
 
Even numbers are :  [4, 6, 34]

Odd numbers are :  [1, 3, 33, 31, 25]
'''
