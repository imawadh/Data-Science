alpha = "abcdefghijklmnopqrstuvwxyz"

t = ""

for i in alpha:
    # print(alpha.index(i),end=" ")
    t = t + alpha[(alpha.index(i)+1)%26]

print(t)

# Calendar 
import calendar
x = calendar.month(2025,1)
print(x)


# Maths Module 
import math as m
print(m.ceil(7.3))
print(m.floor(7.3))
print(m.cos(0))
print(m.tan(45))
print(m.sin(0))
print(round(m.cos(45),2))


# Random Module 
import random as r
print(r.random())
print(r.randint(1,10))


x,y,z = 1,2,3
x=y=z
print(x,y,z) # Output will be z because = operator is right to left associative 

x = 1.234
print(int(x))
print(int(-x))





a,b,c,d=input()
print(a)
print(b)
print(c)
print(d)




E_1 = False
E_2 = False
E_3 = False
if E_1:
    g = 1
if E_2:
    g = 2
if E_3:
    g = 3
print(g)