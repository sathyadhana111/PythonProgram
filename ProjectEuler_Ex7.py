limit = 20
s = 2
count = 0

for var in range(s,limit):
    if  var % 2 == 1:
        print var, 
        count = count + 1

print "total count is :",count

