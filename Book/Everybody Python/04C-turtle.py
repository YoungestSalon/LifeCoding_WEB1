import turtle as t

#변수 값 저장
a=200
b=120
c=90
d=100
e=5
f=10
g=4

for x in range (1, g):

    #삼각형 그리기
    t.color("red")
    t.pensize(e)

    for x in range (3):
        t.fd(a)
        t.lt(b)
    
    #사각형 그리기
    t.color("green")
    t.pensize(e)

    for x in range (4):
        t.fd(a)
        t.lt(c)

    
#원 그리기
t.color("blue")
t.pensize(f)
t.circle(d)
