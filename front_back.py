def front_back(str):
   if len(str) <= 1:
     return str
   l1 = str[1:-1]
   return str[len(str)-1]+l1+str[0]
    
