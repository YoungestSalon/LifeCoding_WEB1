import turtle as t

n = 250
x = 50
t.bgcolor ("black")
t.color ("green")
t.speed (0)

for x in range(n):
    t.circle(x)
    t.left(360/n)
    x=x*0.5
