
# 정답

def calculator_int(*numbers):
    sum = 0
    count = 0

    for i in numbers:
        if i != 0:
            sum += i
            count += 1
        else:
            break

    return sum, int(round(sum/count),0))



# 내가 쓴 오답

def calculator(*kwargs):
    s = 0
    c = 0    
    for key in sorted(kwargs):
        if '{}' > 0 :
            b = sum({})
            c = sum({}) / count({})
        else:
            break
    
    print (b,c)
    



