
# 등장인물, 게임 구성용 변수 만들기

import random

score = 0               # 점수 저장용 변수
playing = False         # 게임 중 / 대기 중 구분용 변수

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



# start 함수

def start():
    global playing                  
    if playing == False :           # 대기 중에 start 함수 호출 시 명령 내용
        playing = True              # 1. playing 변수를 '게임 중'으로 변경
        t.clear()                   # 2. 게임 화면 리셋 (메시지 삭제)

        t.color("black")            # 3. 네모 박스 그리기
        t.up()                              
        t.goto(230, 230)
        t.down()
        t.goto(230, -230)
        t.goto(-230, -230)
        t.goto(-230, 230)
        t.goto(230, 230)

        t.up()                      # 4. 네모 박스 완성 후 거북이 원 위치로
        t.home()
        t.color("white")
        
        play()                      # 5. 게임을 시작



# play 함수

def play():

    global score                    # 점수 계산용 변수
    global playing

    t.forward(10)                   # 주인공 거북이가 10씩 움직임

    if random.randint(1, 5) == 3 :  # 1~5 사이에서 뽑은 수가 3이면 (20% 확률)
        ang = te.towards(t.pos())   # 악당 거북이가 주인공 쪽을 바라봄
        te.setheading(ang)
        
    speed = score + 5               # 점수가 오를수록 악당 거북이가 빨라짐
    if speed > 15 :
        speed = 15                  # 악당 거북이 속도의 최고치는 15임

    te.forward(speed)               # 악당 거북이가 속도값만큼 움직임

    if t.distance(ts) < 12 :        # 주인공과 먹이의 거리 < 12 이면
        score = score + 1           # 1. 먹이 1개 획득 = 1점
        t.write(score)              # 2. 점수를 화면에 표시
        star_x = random.randint(-230, 230)
        star_y = random.randint(-230, 230)
        ts.goto(star_x, star_y)     # 3. 먹이 위치 이동
        
    if t.distance(te) < 12 :        # 주인공과 악당의 거리 < 12 : 게임 끝!
        text = "Score : " + str(score)
        message("Game Over", text)
        playing = False
        score = 0

    if playing :                    # 게임 플레이 중 = 0.1초 후 play 함수 실행
        t.ontimer(play, 100)



# Message 함수

def message(m1, m2):
    t.clear()
    t.up()
    t.goto(0, 100)
    t.write(m1, False, "center", ("", 20))
    t.goto(0, -100)
    t.write(m2, False, "center", ("", 15))
    
    t.home()                        # 주인공 거북이 원 위치로
    t.color("white")
    

        
# 게임 준비

t.title("Turtle Run")               # 거북이 그래픽 창 이름 지정
t.setup(500, 500)                   # 거북이 그래픽 창 크기 지정

t.bgcolor("orange")                 # 배경색 지정



# 게임 실행

t.onkeypress(start, "space")        # 스페이스바 누르면 시작
t.onkeypress(turn_up, "Up")         # 화살표 키 입력 처리
t.onkeypress(turn_down, "Down")
t.onkeypress(turn_left, "Left")
t.onkeypress(turn_right, "Right")

t.listen()                          # 키보드 입력이 거북이 그래픽 창으로 가도록 설정

message("Turtle Run", "[Space]")    # Message 함수의 m1, m2 지정
