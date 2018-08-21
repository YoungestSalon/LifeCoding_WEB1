file = open('spring.txt', 'w', encoding='utf-8')

file.write('========= 고향의 봄 ==========\n\n')

file.write('나의 살던 고향은 꽃피는 산골\n')

file.write('복숭아꽃 살구꽃 아기 진달래\n')

file.write('울긋불긋 꽃 대궐 차린 동네\n')

file.write('그 속에서 놀던 때가 그립습니다\n')

file.close()

file = open('spring.txt', encoding='utf-8')

print(file.read())



file = open ('spring.txt', 'a', encoding='utf-8')

file.write('\n꽃동네 새 동네 나의 옛 고향\n')

file.write('파란들 남쪽에서 바람이 불면\n냇가에 수양버들 춤추는 동네\n')

file.write('그속에서 놀던때가 그립습니다')

file.close

file = open ('spring.txt', encoding='utf-8')

print(file.read())



#파일 열기

file = open('spring.txt', mode='r', encoding='utf-8')

file
print(file)

file.close()


#read 함수

file = open('spring.txt', mode='r', encoding='utf-8')
data = file.read()
file.close()

type(data)
data
print(data)


#readline 함수

file = open('spring.txt', mode='r', encoding='utf-8')
data = file.readline()
file.close()

type(data)
data
print(data)


#while 문으로 파일 전체 읽기

file = open('spring.txt', encoding='utf-8')
while True:
    line = file.readline()
    if not line:
        break
    print(line, end='')

file.readline()
file.close()



#Lab : 각 줄 번호 출력 (정답 1)

file = input('파일 이름을 입력하세요:')

with open(file, encoding='utf-8') as f:
    lines = f.readlines()
    for line in range(len(lines)):
        print('{4}:{}'.format(line+1,lines[line].rstrip()))
    


#Lab : 각 줄 번호 출력

file = input('파일 이름을 입력하세요:')

with open(file, encoding='utf-8') as f:
    lines = f.readlines()
    for n, line in enumerate(lines, 1):
        print('{4}:{}'.format(n, line.rstrip()))
