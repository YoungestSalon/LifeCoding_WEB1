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



##2 건강보험공단 진료내역 데이터 분석----

  # 데이터 불러오기 
  treat = read.csv('data/treat.csv', fileEncoding='euc-kr')
    ## 옵션 fileEncoding='euc-kr' : csv 파일 인코딩이 'euc-kr'임을 지정
    
  
  str(treat)
    ## 5개 변수, 200만 관측치
  
  
  
  
  # factor( ) 형식으로 변환
    ## 숫자처럼 보이지만 범주형 변수인 SEX, MONTH를 factor 형식으로 변환
  
  treat$SEX = factor(treat$SEX)

  levels(treat$SEX)
  levels(treat$SEX) = c('1_남', '2_여')
    ## 수준을 1, 2에서 조금 더 명확한 값으로 변경
  
  
  treat$MONTH = factor(treat$MONTH)
  
  str(treat)


  
  
##2.1 범주형 변수의 요약과 그래프 그리기----
  
  # 월별 진료건수 계산
  table(treat$MONTH)

  round( table(treat$MONTH) / 1000 )
    ## 천건 단위로 변환후 소수점 반올림
  
  
  
  # 막대그래프 그리기
  barplot( round( table(treat$MONTH) / 1000 ) )

  barplot( round( table(treat$AGE) / 1000 ) , las=2)

  
  
  # 파이차트 그리기 
  pie( round( table(treat$AGE) / 1000 ) )
  
  


  # AGE, SEX 두변수의 교차표 만들기
    ## 성-연령대별 진료건수 분포 확인
  
  t_AGE_SEX = table(treat$AGE, treat$SEX)

  
  round( prop.table(t_AGE_SEX, 1) ,  2)

  round( prop.table(t_AGE_SEX, 2) ,  2)


  
  
  # DSBJT, SEX의 교차표 만들기
    ## 성별 진료과목 분포 확인 
  t_DSBJT_SEX = table(treat$DSBJT, treat$SEX)

  
  
  # heatmap( ) 함수를 활용한 열지도 그리기  
  heatmap(t_DSBJT_SEX, 
          col=colorRampPalette(c('white', 'dodgerblue'))(100),
          scale='none', Rowv=NA, Colv=NA, cexRow=1.5, cexCol=1.5)

    ## 옵션 설명 :
      ## col=colorRampPalette(c('white', 'dodgerblue'))(100) 
        ## colorRampPalette( ) 함수를 활용하여 흰색부터 파랑색까지 100개 그라데이션색 생성
  
      ## scale='none'
        ## heatmap( ) 함수는 기본적으로 교차표의 행표준화 결과를 시각화
        ## 해당 옵션으로 행표준화 대신 원본 교차표로 시각화
  
      ## Rowv=NA, Colv=NA
        ## 열지도 작성시 덴드로그램(Dendrogram) 제외
  
  
  
  heatmap(prop.table(t_DSBJT_SEX,1), 
          col=colorRampPalette(c('white', 'red'))(100),
          scale='none', Rowv=NA, Colv=NA, cexRow=1.5, cexCol=1.5)

  
  
  
  # 데이터 부분 선택(내과)
  internal = subset(treat, DSBJT=='내과')

  # MAIN_SICK, AGE 교차표 생성
    ## 연령대별 주상병 확인
  t_MS_AGE = table(internal$MAIN_SICK, internal$AGE)
  dim(t_MS_AGE)
  
  
  rowSums(t_MS_AGE)


  t_MS_AGE2 = t_MS_AGE[rowSums(t_MS_AGE)> 20000, ]
  heatmap(t_MS_AGE2, 
          col=colorRampPalette(c('white', 'red'))(100),
          scale='none', Rowv=NA, Colv=NA, cexRow=1.5, cexCol=1.5)



  t_MS_AGE2 = t_MS_AGE[rowSums(t_MS_AGE)> 10000, ]
  heatmap(t_MS_AGE2, 
          col=colorRampPalette(c('white', 'red'))(100),
          scale='none', Rowv=NA, Colv=NA, cexRow=1.5, cexCol=1.5)

  

  
  
  
  
##2.2 대응분석을 활용한 교차표의 시각화 ----

  # 패키지 'ca' 설치하고 불러오기
  install.packages('ca')
  library(ca)

  
  # ca( ) 함수로 대응분석 실행하기
    ## ca( )에 교차표를 입력
  ca_MS_AGE2 = ca(t_MS_AGE2)
  
  
  # plot( ) 함수로 결과 시각화하기
  plot(ca_MS_AGE2)
  
  
    ## 책에서는 두 스크립트를 묶어 아래와 같이 활용
  plot ( ca(t_MS_AGE2) )
  
  

heatmap(t_Ms_AGE2, 
        col=colorRampPalette(c('white', 'red'))(100),
        scale='none', Rowv=NA, Colv=NA, cexRow=1.5, cexCol=1.5)








# End of script