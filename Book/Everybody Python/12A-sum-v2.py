def sum_func(n,m):
    s = n
    for x in range (n+1, m+1):
        s = s+x
    return s

print("3부터 5까지의 합은",sum_func(3,5),"입니다.")
print("6부터 10까지의 합은",sum_func(6,10),"입니다.")

user1 = input("합을 구하고 싶은 숫자(시작)를 알려주세요.")
user2 = int(user1)
user3 = input("합을 구하고 싶은 숫자(끝)를 알려주세요.")
user4 = int(user3)

print(user1,"부터",user3,"까지의 합은",sum_func(user2, user4),"입니다.")

