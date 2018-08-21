import random

n = random.randint(1,30)

while True :
    x = input ("얼마이게요? (Hint : 1~30 사이입니다.)")
    g = float(x)

    if g == n:
        print("정답! 안뇨옹~")
        break

    if g < n:
        print ("너무 작아요.")

    if g > n:
        print ("너무 커요.")
        
