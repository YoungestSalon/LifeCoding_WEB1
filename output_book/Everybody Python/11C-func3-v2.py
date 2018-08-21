def square(a):
    c = a*a
    return c

def triangle(a,h):
    d = a*h/2
    return d


s1 = input("제곱하고 싶은 수를 알려주세요.")
s2 = float(s1)
s3 = square(s2)

print(s1,"을 제곱한 수는",s3,"입니다.")


tri1 = input("삼각형의 높이를 알려주세요.")
tri2 = float(tri1)
tri3 = input("삼각형의 밑변 길이를 알려주세요.")
tri4 = float(tri3)
tri5 = triangle(tri2, tri4)
tri6 = float(tri5)

print(tri1,"높이이고",tri3,"길이의 밑변을 지닌 삼각형의 넓이는",tri6,"입니다.")
