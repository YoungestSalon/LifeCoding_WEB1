
# 등장인물 만들기

import random

import turtle as t      # 주인공 거북이
t.shape("turtle")
t.speed(0)

te = t.Turtle()         # 악당 거북이
te.shape("turtle")
te.speed(0)
te.color("red")
te.up()
te.goto(0,200)

ts = t.Turtle()         # 먹이
ts.shape("circle")
ts.speed(0)
ts.color("green")
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

    global score                    # 점수 계산용 변수
    score = 0
    global speed_te                 # 악당 거북이 속도 변수 (점수에 따라 변동)
    speed_te = 5

    if score >= 500 :               # 점수에 따라 악당 거북이의 속도가 변화함
        speed_te = 11
    else :
        if score >= 300 :
            speed_te = 8
        else :
            speed_te = 5
    
    t.forward(10)                   # 주인공 거북이가 10씩 움직임

    ang = te.towards(t.pos())       # 악당 거북이가 주인공 쪽으로 9씩 움직임
    te.setheading(ang)
    te.forward(speed_te)

    if t.distance(ts) < 12 :        # 주인공과 먹이의 거리 < 12 : 먹이 이동
        score = score + 100         # 먹이 1개 획득 = 100점
        star_x = random.randint(-230, 230)
        star_y = random.randint(-230, 230)
        ts.goto(star_x, star_y)
        
    if t.distance(te) >= 12 :       # 주인공과 악당의 거리 > 12 : 게임 계속
        t.ontimer(play, 100)
        playing = False        



# start 함수

def start():
    global playing                  # 게임 중 / 대기 중 구분 함수
    playing = False                 # playing 함수 초기 상태 : 대기 중
    if playing == False :           # 대기 중에 start 함수 호출 시 명령 내용
        t.home()                    # 1. 주인공 거북이 원 위치로   
        play()                      # 2. 게임을 시작
        play = True                 # 3. playing 함수를 '게임 중'으로 변경


        
# 게임 준비

t.title("Turtle Run")               # 거북이 그래픽 창 이름 지정
t.setup(500, 500)                   # 거북이 그래픽 창 크기 지정

t.bgcolor("orange")                 # 배경색 지정

t.color("black")                    # 네모 박스 그리기
t.up()                              
t.goto(230, 230)
t.down()
t.goto(230, -230)
t.goto(-230, -230)
t.goto(-230, 230)
t.goto(230, 230)
t.up()

t.goto(0, 100)                      # 배경에 'Turtle Run' 쓰기
t.color("white")
t.write("Turtle Run", False, "center", ("", 15))

t.goto(0, -100)                     # 배경에 'Press Space' 쓰기
t.write("Press Space", False, "center", ("", 15))

t.home()



# 게임 실행

t.onkeypress(start, "space")        # 스페이스바 누르면 시작
t.onkeypress(turn_up, "Up")         # 화살표 키 입력 처리
t.onkeypress(turn_down, "Down")
t.onkeypress(turn_left, "Left")
t.onkeypress(turn_right, "Right")

t.listen()
