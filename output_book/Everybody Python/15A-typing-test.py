
# 사전 준비 : 모듈 임포트, 리스트 작성
import random
import time
animal = ["cat", "dog", "fox", "monkey", "mouse", "panda", "frog", "snake", "wolf"]


# 게임 시작 : 시작 시간 기록
input ("타자 게임을 시작합니다. 준비가 되셨다면 Enter 키를 눌러주세요.")
start = time.time()


# 게임 진행 : 5회 반복
turn = 1
while turn <= 5 :
    q = random.choice(animal)
    a = input(q)
    if a == q:
        print ("정답입니다.")
        turn = turn + 1
    else:
        print ("정확히 입력해주세요.")


# 게임 종료 : 시간 측정/출력
end = time.time()
during = end - start

print ("수고하셨습니다. 소요 시간은", during, "초 입니다.")


    
