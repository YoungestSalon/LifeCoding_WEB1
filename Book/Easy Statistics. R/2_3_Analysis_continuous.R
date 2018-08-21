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



##3 아빠키-아들키 데이터 분석----

  # 데이터 불러오기
  heights = read.csv('data/heights.csv')

  head(heights)
  nrow(heights)

  
  # 변수별 요약
  summary(heights)
  
  
  
  # 나란한 상자 그림
  boxplot(heights)
  
  
  
  # 아들키 히스토그램
  hist(heights$son)

  

##3.1 산점도와 상관계수 ----
  
  # 산점도 그리기
  plot(heights, pch=16, col=rgb(0.7, 0.2, 0.2, 0.5))
    
    ## heigths의 첫번째 변수(father, 아빠키)를 x축, 
    ##           두번째 변수(son, 아들키)를 y축 좌표로 활용하여 점 찍음
  
    ## 옵션 pch=16 : 각 번호마다 점 모양이 다름
    ?points  # 참고
  
    ## 옵션 col=   : 점 색깔을 지정
  
    ## 함수 rgb(R, G, B, A) : 빨강, 초록, 파랑의 비율을 0~1사이값으로 넣어 색상지정
    ##                        알파(A)값을 지정하여 투명한 색깔 지정가능(0.5 -> 점 두개가 겹쳐야 온전한 색)
  
  
  
  # 평균 기준 보조선 추가 
  abline( v= mean(heights$father), lty=2 )
    ## 아빠키 평균에서 수직선("v"ertical) 추가
  
  abline( h= mean(heights$son), lty=2 )
    ## 아들키 평균에서 수평선("h"orizontal) 추가
  
    ## 옵션 lty=2 : 선 모양(line type) 변경(1:실선, 2:점선, ...)

  
  
  
  # 상관계수 계산
  cor(heights)


  
  # lm( ) 함수를 활용한 선형 회귀모형의 적합
  lm_heights = lm(son ~ father, data=heights)

  
  summary(lm_heights)
    ## son = 86.10257 + 0.51391*father
    ## 결정계수(Multiple R-squared) : 0.2511
  
  


# End of script