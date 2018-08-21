
# 사전 준비 : 모듈 임포트, 리스트 작성
import random
import time
animal = ["cat", "dog", "fox", "monkey", "mouse", "panda", "frog", "snake", "wolf"]
turn = 1

# 게임 시작 : 시작 시간 기록
input ("타자 게임을 시작합니다. 준비가 되셨다면 Enter 키를 눌러주세요.")
start = time.time()


# 게임 진행 : 5회 반복
q = random.choice(animal)
while turn <= 5 :
    print ("*문제 #", turn)
    print (q)
    a = input()
    if a == q:
        print ("정답입니다. 통과!")
        turn = turn + 1
        q = random.choice(animal)
    else:
        print ("오타! 정확히 입력해주세요.")


# 게임 종료 : 시간 측정/출력
end = time.time()
during = end - start
during = format(during, ".2f")
print ("수고하셨습니다. 소요 시간은", during, "초 입니다.")

