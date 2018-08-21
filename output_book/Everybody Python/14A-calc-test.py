import random

sc1 = 0
sc2 = 0

num1 = random.randint(1,10)
num2 = random.randint(1,10)
select = random.randint(1,3)

print ("수학 문제 맞추기 게임(총 5판)을 시작합니다.")

for x in range (5):

    def make_question():

        if select == 1:
            num3 = num1+num2

        if select == 2:
            num3 = num1-num2

        if select == 3:
            num3 = num1*num2

        return num3
    

    if select == 1:
        a = num1,"+",num2
        num4 = input(a)
        make_question()
        if num4 == num3:
            sc1 = sc1 + 1
        else:
            sc2 = sc2 + 1

    if select == 2:
        a = num1,"-",num2
        num5 = input(a)
        make_question()
        if num5 == num3:
            sc1 = sc1 + 1
        else:
            sc2 = sc2 + 1

    if select == 3:
        a = num1,"X",num2
        num6 = input(a)
        make_question()
        if num6 == num3:
            sc1 = sc1 + 1
        else:
            sc2 = sc2 + 1

print ("게임을 종료합니다.")
print ("정답",sc1,"개, 오답",sc2,"개 입니다. 프로그램을 종료합니다.")

                
                
