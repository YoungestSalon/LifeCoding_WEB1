import turtle as t

#변수 값 저장
a=200
b=120
c=90
d=100
e=5

#삼각형 그리기
t.color("red")
t.pensize(e)
t.fd(a)
t.lt(b)
t.fd(a)
t.lt(b)
t.fd(a)
t.lt(b)

#사각형 그리기
t.color("green")
t.pensize(e)
t.fd(a)
t.lt(c)
t.fd(a)
t.lt(c)
t.fd(a)
t.lt(c)
t.fd(a)
t.lt(c)

#원 그리기
t.color("blue")
t.pensize(e)
t.circle(d)
