def common_end(a, b):
  if a > 0 and b > 0:
       if a[0] == b[0] or a[-1] == b[-1]:
           return True
       else:
           return False
           
  else:
      return False
