#-----------------------------------#
#   이토록 쉬운 통계 & R            #
#     R 실습 스크립트               #
#     홈페이지 : dataartproject.xyz #
#-----------------------------------# 


  # 명령어 실행
  #   Windows : Ctrl + Enter
  #   Mac     : Command + Enter

  # "#"이 붙어 있는 줄은 주석(Comment)처리되어 실행되지 않습니다.
  
  # Alt + Shift + J 로 원하는 부분으로 이동 가능합니다.



######## 95% R로 분석 다시 보기 



##1 연봉 데이터 분석 ----
    ## 출처 : 한국납세자 연맹(koreatax.org) 연봉 계산기 활용 가상데이터

  data = read.csv('data/salary_data.csv')
  
  head(data)
  
  head(data, n=10)
    ## 처음 10개 관측치만 확인 
  
  
  
  nrow(data)


  # data에서 변수 salary를 떼어와 salary로 저장  
  salary = data$salary
  salary
    ## 이후 함수를 편하게 사용하기 위해 실행
  


  # 데이터 정렬(오름차순)
  sort(salary)
    

  
  
  
##1.1 통계량의 계산----
  
  # 최솟값, 최댓값, 중앙값 계산
  min(salary)
  max(salary)
  median(salary)


  # quantile( ) 함수로 분위수 계산
  quantile(salary, 0.9)
  quantile(salary, 0.25)
  quantile(salary, 0.75)

  
  
  # summary( ) 함수를 활용한 데이터 요약 
  summary(salary)

  
  
  # 합계, 평균, 분산, 표준편차 계산
  sum(salary)
  mean(salary)
  var(salary)
  sd(salary)

  
  # 논리연산 
  salary > 4000 

  sum(salary > 4000)
    ## 조건과 일치하는 관측치의 수
  mean(salary > 4000)
    ## 조건과 일치하는 관측치의 비율 = 확률 



  
##1.2 그래프 그리기 ----    
  
  
  # 상자그림 그리기
  boxplot(salary, range=100)
    ## 이상치 구분 없는 상자그림 
  
  boxplot(salary)
    ## 이상치를 표현한 상자그림
  

  
  # 부분 데이터 선택
  salary_10000 = salary[ salary <10000 ]
  boxplot(salary_10000)

  
  
  # 히스토그램 그리기 
  hist(salary)

  hist(salary_10000, breaks=seq(0, 10000, 500))

  
  
  
  
# End of script