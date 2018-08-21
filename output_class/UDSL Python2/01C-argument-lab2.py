
# 정답

def sort_scores(*scores):
    # tuple은 sort() 메소드가 없기 때문에 리스트로 형변환
    score_list = (list(scores))
    score_list.sort(reverse=True)
    for s in score_list:
        print(s)


# 내가 쓴 답

def sort_score(*s):
    i = 0
    list(i)
    sorted(s, reverse=True)
    return s
