def calculatePay(ratePerHour , totalHoursWorked):

    if(ratePerHour <= 0) or (totalHoursWorked <= 0):
        print " "
        print "Checking under 0..."
        return 0
 
    if totalHoursWorked <= 40:
        totalGrossPay = (totalHoursWorked * ratePerHour)
        
    elif (totalHoursWorked > 40) and (totalHoursWorked < 60):
        overtime = totalHoursWorked - 40
        print " "
        print "overtime hours: ",overtime
        print "overtime amount $" , (1.5 * ratePerHour) * overtime
        print "regular hours amount $", ratePerHour * 40
        totalGrossPay = ratePerHour * 40 + (1.5 * ratePerHour) * overtime
        
    elif totalHoursWorked >= 60:
        doubletime = totalHoursWorked - 60
        overtime1 = 20 # here b/t 40 and 60hours.
        print " "
        print "doubletime hours:",doubletime
        print "overtime1 hours:",overtime1
        totalGrossPay = (ratePerHour * 40) + (2 * ratePerHour) * doubletime + (1.5 * ratePerHour) * overtime1
    else:
        print "Please give some inputs......"
            
    return totalGrossPay



    
pay1 = calculatePay(30,20)
print "pay1 is $",pay1
pay2 = calculatePay(15,50)
print "pay2 is $",pay2
pay3 = calculatePay(10,70)
print "pay3 is $",pay3
#Just tried with zero and negative values.
pay4 = calculatePay(0,10)
print "pay4 is :",pay4
pay4 = calculatePay(7,0)
print "pay4 is :",pay4
pay4 = calculatePay(7,-1)
print "pay4 is :",pay4
