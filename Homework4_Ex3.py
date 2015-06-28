import random

name = raw_input("Please enter Spades/Hearts/Clubs/Diamonds ....")

cards = []
goAgain = ""
while goAgain == "":

    
    myList1 = raw_input("please enter card numbers ")
    cards.append(myList1)
    print "cards = ",cards

    for outputList in cards:
          if name == "Spades":
                print str(outputList) + " of Spades"
                print
                
          elif (name == "Hearts"):
             print str(outputList) + " of Hearts"
             print

          elif (name == "Clubs"):
             print str(outputList) + " of Clubs"
             print
             
          elif(name == "Diamonds"):
             print str(outputList) + " of Diamonds"
             print
             
          else:
              print "Please choose Spades/Hearts/Clubs/Diamonds, dont use other stuff."
       

    goAgain = raw_input("Do u want to continue?")
    print cards

    

    
