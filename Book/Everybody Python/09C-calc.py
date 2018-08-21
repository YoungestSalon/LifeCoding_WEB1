import random

a = random.randint(1,30)
b = random.randint(1,50)

print (a,"+",b,"= ?")
x = input()
c = int(x)

if a+b == c:
    print ("You do a good job!")
else:
    print ("How foolish you are!")
    
