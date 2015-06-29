'''
The Smallest Number in a Circular List in Python
Given a circular list of integers (when you reach
the end of the list you come back to the beginning),
what is the most efficient algorithm to find the
smallest integer in the list?

For example: circular_list = [22, 52, 66, 82, 5, 8, 12, 19].
'''
l1 = [22, 52, 66, 82, 5, 8, 12, 19]
def circular_list(l1):
    l1.sort()
    print l1
    print l1[0]
    

circular_list(l1)

