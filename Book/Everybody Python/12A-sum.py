def sum_func(n):
    s = 0
    for x in range (1, n+1):
        s = s+x
    return s

print("10까지의 합은",sum_func(10),"입니다.")
print("100까지의 합은",sum_func(100),"입니다.")

user1 = input("합을 구하고 싶은 숫자를 알려주세요.")
user2 = int(user1)

print(user1,"까지의 합은",sum_func(user2),"입니다.")

