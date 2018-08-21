import turtle as t
import random


# 함수 정의
def turn_up():
    t.left(2)
    
def turn_down():
    t.right(2)
    
def fire():
    ang = t.heading()           # 현재 거북이가 바라보는 각도를 기억
    while t.ycor() > 0:         # 거북이가 땅 위에 있는 동안 반복
        t.forward(15)
        t.right(5)              # while 반복문을 빠져나오면 거북이는 땅에 도착

    d = t.distance(target, 0)            # 거북이와 목표지점 사이의 거리는?
    t.sety(random.randint(10, 100))      # 성공/실패를 표시할 위치 지정
    if d < 25:                           # 거리 차이 < 25 : 명중으로 처리
        t.color("blue")
        t.write("Good!", False, "center", ("", 15))
        
        t.write("새로운 게임을 시작합니다.", False,"Center", ("",15))
        t.reset()

        t.goto(-300, 0)
        t.down()
        t.goto(300, 0)

        target = random.randint(50, 150)
        t.pensize(3)
        t.color("green")
        t.up()
        t.goto(target-25, 2)
        t.down()
        t.goto(target+25, 2)

        t.color("black")
        t.up()
        t.goto(-200, 10)
        t.settheading(20)
        
    else:                                # 명중이 아니라면?
        t.color("red")
        t.write("Bad!", False, "center", ("", 15))
        t.color("black")
        t.goto(-200, 10)                 # 처음 발사했던 곳으로 거북이 원 위치
        t.setheading(ang)                # 거북이 각도도 원상 복구


# 땅 그리기
t.goto(-300, 0)
t.down()
t.goto(300, 0)

# 목표지점 설정, 과녁 그리기
target = random.randint(50, 150)
t.pensize(3)
t.color("green")
t.up()
t.goto(target-25, 2)
t.down()
t.goto(target+25, 2)

# 거북이 : 처음 발사 했던 원 위치로 복귀
t.color("black")
t.up()
t.goto(-200, 10)
t.setheading(20)

# 동작 관련 설정
t.onkeypress(turn_up, "Up")
t.onkeypress(turn_down, "Down")
t.onkeypress(fire, "space")
t.listen()
       
