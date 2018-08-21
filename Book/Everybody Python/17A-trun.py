
# 등장인물 만들기

import random

import turtle as t      # 주인공 거북이
t.shape("turtle")
t.speed(0)

te = t.Turtle()         # 악당 거북이
te.shape("turtle")
te.color("red")
te.speed(0)
te.up()
te.goto(0,200)

ts = t.Turtle()         # 먹이
ts.shape("circle")
ts.color("green")
ts.speed(0)
ts.up()
ts.goto(0,-200)



# 방향키 함수

def turn_left():
    t.setheading(180)

def turn_right():
    t.setheading(0)

def turn_up():
    t.setheading(90)

def turn_down():
    t.setheading(270)



# play 함수

def play():
    t.forward(10)                   # 주인공 거북이가 10씩 움직임

    ang = te.towards(t.pos())       # 악당 거북이가 주인공 쪽으로 9씩 움직임
    te.setheading(ang)
    te.forward(9)

    if t.distance(ts) < 12 :        # 주인공과 먹이의 거리 < 12 : 먹이 이동
        star_x = random.randint(-230, 230)
        star_y = random.randint(-230, 230)
        ts.goto(star_x, star_y)
        
    if t.distance(te) >= 12 :       # 주인공과 악당의 거리 > 12 : 게임 계속
        t.ontimer(play, 100)


# 게임 준비/실행

t.setup(500, 500)
t.bgcolor("orange")                 # 배경색 지정

t.color("black")                    # 네모 박스 그리기
t.up()                              
t.goto(230, 230)
t.down()
t.goto(230, -230)
t.goto(-230, -230)
t.goto(-230, 230)
t.goto(230, 230)

t.up()                              # 주인공 거북이 원위치로
t.color("white")
t.goto(0, 0)                        

t.onkeypress(play, "space")         # 스페이스바 누르면 시작
t.onkeypress(turn_up, "Up")         # 화살표 키 입력 처리
t.onkeypress(turn_down, "Down")
t.onkeypress(turn_left, "Left")
t.onkeypress(turn_right, "Right")

t.listen()
