totalNumber = 0
for var in range(1,1000):
    if (var % 3 == 0) or (var % 5 == 0):
        print "var is :",var
        totalNumber = var + totalNumber
        print totalNumber

