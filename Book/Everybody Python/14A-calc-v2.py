import random


def make_question():
    a = random.randint(1,40)
    b = random.randint(1,20)
    op = random.randint(1,4)

    q = str(a)

    if op == 1 :
        q = q + "+"

    if op == 2 :
        q = q + "-"

    if op == 3 :
        q = q + "*"

    if op == 4 :
        q = q + "/"

    q = q + str(b)

    return q


sc1 = 0
sc2 = 0


for x in range(5):
    q = make_question()
    print(q)
    ans = input("=")
    r = float(ans)

    if eval(q) == r:
        sc1 = sc1 + 1
        print ("정답! 현재까지 정답", sc1, "개, 오답", sc2, "개입니다.")
        
    else:
        sc2 = sc2 + 1
        print ("오답! 현재까지 정답", sc1, "개, 오답", sc2, "개입니다.")
   

print ("최종 성적은 정답 :", sc1, "개 / 오답 :", sc2, "개입니다.")

if sc2 == 0:
    print("수학 실력이 좋군요!")
else:
    print("좀 더 정진하세요!")
    
