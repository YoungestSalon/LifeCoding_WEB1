
# 등장인물 만들기

import turtle as t      # 주인공 거북이
t.shape("turtle")
t.color("white")

te = t.Turtle()         # 악당 거북이
te.shape("turtle")
te.color("red")

ts = t.Turtle()         # 먹이
ts.shape("circle")
ts.color("green")

score = 0               # 점수



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
    t.forward(9)                   # 주인공 거북이가 10씩 움직임

    ang = te.towards(t.pos())       # 악당 거북이가 주인공 쪽으로 10씩 움직임
    te.setheading(ang)
    te.forward(10)

    d1 = t.position()               # 주인공 거북이의 위치는?
    d2 = te.distance(d1, d1)        # 주인공 거북이와 악당 거북이의 거리는?
    d3 = ts.distance(d1, d1)        # 주인공 거북이와 먹이의 거리는?
    
    if d2 == 0 :
        t.write("The End", False, "center", ("",15))
        
    else :
        if d3 == 0 :
            score = score + 100
            t.ontimer(play, 100)

        else :
            t.ontimer(play, 100)
         


# 게임 준비/실행

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
t.goto(0, 0)                        

te.up()
te.goto(0, 200)                     # 악당 거북이 시작점으로
ts.up()
ts.goto(0, -200)                    # 먹이 시작점으로

t.onkeypress(play, "space")         # 스페이스바 누르면 시작
t.onkeypress(turn_up, "Up")         # 화살표 키 입력 처리
t.onkeypress(turn_down, "Down")
t.onkeypress(turn_left, "Left")
t.onkeypress(turn_right, "Right")

t.listen()
