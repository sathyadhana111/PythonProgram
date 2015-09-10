'''
Question 2 (6 points) 
 
A stack follows LIFO (last-in, first-out). 
LIFO is the case where the last  element added
is the first element  that can be retrieved. 
Consider a list with values [1,2,3]. Add functions
stackadd and stackretrieve to add and retrieve elements
from the list in LIFO order respectively. After each function
call, print the content of the list.
 
'''
import time
 
list = [1,2,3]
 
           
def stackadd():
   print list
   if len(list) == 0:
       print "No elements inside the list."
   while len(list) > 0:
       print "Length of list is :",len(list)
       app = raw_input("Please add value")
       list.append(app)
       print list 
       
       if app == "q" or app =="":
           break
       
 
def stackretrieve():
   print
   print "Now list is :",list
   print
 
   
   while True:
       if len(list) == 0:
            print
            print "No elements to retrieve in the list...."
            break
       else:
   
            print "Last element to retrieve is :",list.pop()
            print "Now list is :",list
            print
            time.sleep(1)  #wait 1 sec to get output.
              
      
stackadd()
stackretrieve()
 
'''
Output:
 
[1, 2, 3]
Length of list is : 3
Please add value4
[1, 2, 3, '4']
Length of list is : 4
Please add value5
[1, 2, 3, '4', '5']
Length of list is : 5
Please add value6
[1, 2, 3, '4', '5', '6']
Length of list is : 6
Please add value7
[1, 2, 3, '4', '5', '6', '7']
Length of list is : 7
Please add valueq
[1, 2, 3, '4', '5', '6', '7', 'q']

Now list is : [1, 2, 3, '4', '5', '6', '7', 'q']

Last element to retrieve is : q
Now list is : [1, 2, 3, '4', '5', '6', '7']

Last element to retrieve is : 7
Now list is : [1, 2, 3, '4', '5', '6']

Last element to retrieve is : 6
Now list is : [1, 2, 3, '4', '5']

Last element to retrieve is : 5
Now list is : [1, 2, 3, '4']

Last element to retrieve is : 4
Now list is : [1, 2, 3]

Last element to retrieve is : 3
Now list is : [1, 2]

Last element to retrieve is : 2
Now list is : [1]

Last element to retrieve is : 1
Now list is : []


No elements to retrieve in the list....
'''
