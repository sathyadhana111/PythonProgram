lower = raw_input("Enter ur starting number....")
lower = int(lower)
upper = raw_input("Enter ur upper range number....")
upper = int(upper)
count = 0
sum = 0

for num in range(lower,upper+1):
    if num > 1:
        for var in range(2,num):
            if num % var == 0:
                break
        else:
            print num
            sum = sum + num
            count = count + 1

print "total count is :",count
print "sum is :",sum

