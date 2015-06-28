#Dice program
#First getting the random numbers from Dice1 and Dice2
#Compare Dice1 with Dice2 to know if there is a doubles
#If there is a doubles. Count the doubles and print the percentage.
#If you want to continue the game you can press y or yes and q for quit.
#Finally you can count the number of times you played and how many times we got doubles.


import random

counter = 0

def rollingDice():    
    dice1 = random.randint(1 , 7)
    dice2 = random.randint(1 , 7)
    total = dice1 + dice2
    print "Dice1 :",dice1
    print "Dice2 ",dice2

    if (dice1 == dice2):
        print "DOUBLES!!!!!"
        return True
    else:
        return False
   
print "Checking dice 1 and dice2...."

rollAgain ='y'
doubles = 0
while rollAgain == 'yes' or rollAgain == 'y':
    counter = counter + 1
    valueOutput =  rollingDice()
    if  valueOutput == True:
       valueOutput = valueOutput + 1
       doubles = doubles + 1
    else:
        print "Working on dice"
       
    print "Number of count is :",counter 
 

    rollAgain = raw_input("Roll the Dice Again?Press yes or y to continue and q to exit")
print "doubles count is : ",doubles,".So percentage is ", (doubles*100) / counter,"%."
     
     
