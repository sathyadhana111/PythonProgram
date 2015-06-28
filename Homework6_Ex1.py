import random
import time
import sys

# 1)' is missing in lemon

reelList = ['orange', 'orange', 'orange', 'lemon', 'lemon', 'lemon', \
            'plum', 'plum', 'plum', 'cherries', 'cherries', 'cherries', \
              'banana', 'banana', 'banana', 'bar', 'bar', 'Lucky 7']

nPicturesInReel = ','.join(reelList)  #2)added ','.join , reelList as resultList

nCoins = 100
print 'You have', nCoins, 'coins to start.  Good luck.'
print

def payTable(myList):  #3)function starts with def
    picture1 = myList[0]
    picture2 = myList[1]
    picture3 = myList[2]
    if myList.count(picture1) == 3:
        if picture1== 'Lucky 7':
            nCoinsWon = 500
        elif picture1== 'bar':
            nCoinsWon = 100
        else:
            nCoinsWon = 10

    else:
        if (picture1 == picture2) or (picture2 == picture3) or (picture1 == picture3):  #4)(picture2 == picture3)
            nCoinsWon = 2
        else:
            nCoinsWon = 0

    if nCoinsWon < 0:
       print "Sorry, you do not have that many coins, you only have: ", nCoinsWon


    
    print "nCoinsWon :",nCoinsWon   #this line added to check nCoinsWon is working or not
    return nCoinsWon  # 5)added return nCoinsWon

 #To check if coins are negative

        

while True:

    bet = raw_input('How many coins do you want to bet (defaults to 1, enter 0 to quit): ')
    bet = int(bet) #6)added this line
    print "bet :",bet #this line is added to check bet is working as expected.
    if bet == 0:
        print 'Sorry to see you go.  Come back again soon.'
        sys.exit(0)     # New, but works to quit the program
    if bet == '':
        bet = 1
    

#Incase if bet is negative
    if bet < 0 :
        print "This is not a valid bet!!"

    resultList = []
    for spin in range(3):
        thisReelIndex = random.randrange(0, len(nPicturesInReel)) #7)added len()
        #thisPicture = reelList[thisReelIndex]
        thisPicture = str(reelList)   #8)added str(reelList)
        resultList.append(thisPicture)
        

        

    print 'Spinning ... '
    print
    time.sleep(.5)
    print '     ', resultList[0]
    time.sleep(.5)
    print '     ', resultList[1]
    time.sleep(.5)
    print '     ', resultList[2]
    print


        
    nCoins = nCoins - bet #9)here did sub not add.
    payOut = bet * payTable(resultList)
    print "payOut is :",payOut   #added this line to check payOut is working or not

    if payOut == 0:  # condition should be ==
        print 'Sorry - you lose.'
    else:
        print 'You won ' + str(payOut) + ' coins.  Cha-ching!'  # 10), payOut, as + str(payOut) +
        if payOut > 50:
            print '                         WOOOOO  HOOOOOOOOOOO!!!!'
            
    nCoins = nCoins +  payOut 

    print 'You now have ' + str(nCoins) + ' coins.'   #added str(nCoins)
    print

    
            
     
    
