#Program to find sum,average,min and max.

import random


def showList(inputList):
   if len(numberList) == 0:
      print "Your list has no number."
   else:
       index = 0
       total = 0
       max = 0
       min = inputList[0]
       count = 0
       for thisList in inputList:   #iterate through the list,printing total and average.
           total = total + thisList
           print "Checking ....."
           print 
           index = index + 1
           count = count + 1
           print "Total is :",total       #print total
           print "Avg is : ",total/count  #print average
           #index = index + 1
            
           if thisList > max:    #printing the maximum.
              
            max = thisList
            index = index + 1
           print
           print "maximum value is :",max  

           for thisList in inputList:  #iterate through the list,printing minimum

               if thisList < min:   #printing the minimum
                  print "Checking minimum...."
                  min = thisList
           
           print "minimum value is ",min

   
             
 

numberList =[]
goAgain=""
while goAgain=="":
    inputList = raw_input("Enter the number :")
    inputList = float(inputList) #convert the input to float
    numberList.append(inputList) #append adds to the end of the list
    print "Checking ...."
    print numberList

    goAgain = raw_input("Press Enter/Return to continue or q to quit.")

   
        
showList(numberList)
print "numberList[] = ",numberList  



