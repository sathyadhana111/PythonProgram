def calculateBill(nOfHamburger,nOfHotDog,nOfMilkShake):
 
    amount = (nOfHamburger * 3) + (nOfHotDog * 2) + \
             (nOfMilkShake * 3)
    tax = amount / 10.00 # tax is 10%
    total = amount + tax
    return total

billAmount1 = calculateBill(2,2,3)
print "Your bill is: $", billAmount1
billAmount2 = calculateBill(3,2,1)
print "Your bill is: $", billAmount2
billAmount3 = calculateBill(3,2,3)
print "Your bill is: $", billAmount3
totalSum = billAmount1 + billAmount2 + billAmount3
print "sum of all bills : $", totalSum
