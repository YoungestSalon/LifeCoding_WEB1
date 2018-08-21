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



##4 통계 모형 살펴보기 ----


##4.1 그룹별 평균의 계산 ----

  # 데이터 확인
  InsectSprays
    ## R 설치시 제공되는 기본 데이터 

  str(InsectSprays)
  
  
  
  # aggregate( ) 함수를 활용한 그룹별 평균의 계산
  aggregate(count ~ spray, data=InsectSprays, mean)

  
  # 그룹별 상자그림 그리기
  boxplot(count ~ spray, data=InsectSprays)

  
  
  # aov( ) 함수를 활용한 분산분석
  aov_spray = aov(count ~ spray, data=InsectSprays)
  summary(aov_spray)

  
  
  # lm( ) 함수를 활용한 회귀모형과 비교 
  summary(lm(count ~ spray, data=InsectSprays))
    ## 분산분석이 그룹 변수에 따른 차이를 검정한다면,
    ## 회귀모형은 각 그룹의 기준그룹(예제에서는 스프레이A) 대비 차이를 검정
  
  
  

  
##4.2 SKT 통화량 데이터의 요약----
  ## 출처 : SK텔레콤 빅데이터허브(bigdatahub.co.kr)
  ## 정책상 데이터 공유가 불가능 하므로, 요약/변형된 데이터로 실습
  
  ## 해당 사이트를 방문해서 회원가입 후 원본데이터를 살펴보는 것을 추천합니다!
  
  
  # 데이터 불러오기 
  call_chicken = read.csv('data/call_chicken.csv', fileEncoding='euc-kr')
  
  head(call_chicken)
  str(call_chicken)


  # 시군구별 평균 계산 /상자그림 그리기 /분산분석
  aggregate(통화건수~시군구, data=call_chicken, sum)
  boxplot(통화건수~시군구, data=call_chicken, las=2)
  summary(aov(통화건수~시군구, data=call_chicken))


  # 분산분석
  summary(aov(통화건수~연령대, data=call_chicken))
  summary(aov(통화건수~성별, data=call_chicken))
  summary(aov(통화건수~요일, data=call_chicken))





##4.3 의사결정나무 모형의 활용----

  # 패키지 rpart 설치 / 불러오기
  install.packages("rpart")
  library(rpart)
    ## CART 알고리즘으로 구현된 의사결정나무 모형 적합에 활용
  
  
  # 패키지 rpart.plot 설치 / 불러오기
  install.packages("rpart.plot")
  library(rpart.plot)
    ## rpart로 적합된 모형을 시각화하는데 활용
  
  
  
  # rpart( ) 함수를 활용한 의사결정나무 모형의 적합
  rpart_call = rpart(통화건수~시군구+연령대+성별+요일, data=call_chicken)
  
  
  # 모형 살펴보기 
  rpart_call
    
  
  
    #-- 중요 --#
    ## 의사결정나무모형을 시각화한 그래프가 꽤 크므로 새창에 그래프를 그림
    
    ## 아래의 명령어로 새창을 띄운뒤, 창을 최대화 하고
    ## rpart.plot( ) 함수를 실행하는 것을 추천
  
  
    ## Windows에서 새 그림창 열기
    windows()
    
    
    ## Mac에서 새 그림창 열기
    quartz()
    
  
  # rpart.plot( ) 함수를 활용한 시각화  
  rpart.plot(rpart_call, cex=1)





# End of script