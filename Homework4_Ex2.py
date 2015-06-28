import random


numberList = ["aaa","bbb","ccc","ddd","eee","fff"]
p1 = range(len(numberList))
p2 = len(numberList)


for outputList in p1,numberList:
        print outputList
        

def displayMyList(online):
    print "You are approaching previous element...."
    previous = 0
    forward = 0
    if goAgain == "p":
            print "Testing previous value ...."
            previous = t1 - 1
            print "previous key is : ",previous
            print "previous value is : ",numberList[previous]
    elif goAgain == "n":
            print "Testing next ......"
            print "len(myList) :",len(numberList)
            if t1 == p2:
                print "next element is : ",numberList[0]
            else:
                forward = t1 + 1
                print "next key is : ",forward
                print "next value is : ",numberList[forward]
    else:
        print "Exit from the program"
    return goAgain


t1 = raw_input("Please enter some number to get value from the list (ie) t1 : ")
t1 = int(t1)
print "Press p to get previous element, n for next element and q to quit."
goAgain = raw_input("Do u want to press 'p' or 'n' or 'q' ?")
       

if goAgain == "p" or goAgain == "n" or goAgain == "q":
         displayMyList(t1)


print "Good Bye!!!"
      
