# 데이터 파일 파싱 : grades.txt

file = open('pitcher_stats.txt', mode='r', encoding='utf-8')
data = file.read().splitlines()
file.close()

for i in range(len(data)):
    data[i] = data[i].split('/')

for i in range(len(data)):
    data[i][1] = int(data[i][1])
    data[i][2] = int(data[i][2])
    data[i][3] = float(data[i][3])

print(data)
