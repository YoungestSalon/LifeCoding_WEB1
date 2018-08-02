#### [생활코딩 WEB1](https://opentutorials.org/course/3084/18438) 요약 



> 어떤 문제가 우리 삶에서 중요하고 심각할수록 
> 그 문제를 해결해주는 공부는 문제로부터 우리를 해방시켜줄 것입니다.
> 반대로 그 문제가 우리 삶과 동떨어져 있고, 사소할수록
> 공부 자체가 삶의 문제가 되어서 우리를 해방시키기는 커녕 억압할 것입니다.
>
> < 생활코딩 WEB1 1강 중 >



- 원인과 결과
  - 사람이 하는 일(원인) : Code, Source, 컴퓨터 언어
  - 기계가 하는 일(결과) : Application, App, Program, 응용 프로그램, Webpage, Website



- HTML은 왜 중요할까?

  - 쉽다. (= 문법을 완전히 다 배우는데 10분도 걸리지 않음)

  - 중요하다. (= 인류가 생산하는 거의 모든 디지털 정보가 담기는 그릇)

  - 퍼블릭 도메인(Public Domain)이다. (= 라이센스 비용이 없다.)

    ~~~
    빨리 가려면 혼자 가고, 오래 가려면 같이 가라.
    ~~~

  - 비즈니스적 관점 : 어떻게 하면 검색엔진에 의해 잘 검색되게 할 수 있는가?

    ~~~
    ※ 검색엔진 : 절대 다수의 사이트를 수집하여 HTML 코드를 분석
       → HTML 문법에 따라 작성된, '정보 전달'에 충실한 사이트를 검색 결과 상단에 출력
       → 노출 효과 : '정보 전달'에 충실한 사이트 > 시각적으로만 화려한 사이트
    ※ 본문 없이 포토샵으로만 만든 사이트 : 검색엔진이 인식/해석하지 않음 
    ~~~

  - 접근성 / 개방성 : '신체적인 장애가 있는 사람도 정보로부터 소외되면 안된다'는 철학

    ~~~
    ※ 본문 없이 포토샵으로만 만든 사이트 : 장애인을 위한 보조도구도 해석하지 못함
    ~~~

    

- 실습 환경

  - Browser : Microsoft Edge가 아닌 무언가. (Ex. Google Chrome)

  - Editor : Atom

    

- 효율적 공부를 위한 Tip

  ![The average web page 1.JPG](https://github.com/YoungestSalon/TIL/blob/master/The%20average%20web%20page%201.JPG?raw=true) 

  - 전체 Tag는 150개쯤 되지만, 상당수 사이트는 25개 내외의 Tag만 사용한다.
    [The average web page](https://www.advancedwebranking.com/html/)를 참조하여 통계에 기반한 효율적인 공부를 지향하자!

    

- 기본 문법 (TAG)

  ![The average web page 2.JPG](https://github.com/YoungestSalon/TIL/blob/master/The%20average%20web%20page%202.JPG?raw=true) 

  - 굵게 : \<strong> Text \</strong>

  - 밑줄 : \<u> Text \</u>

  - 줄 바꿈 : \<br>   (특징 : 닫는 Tag가 없음. 특정 위치에 여러 번 반복 사용이 가능.)

  - 단락 : \<p> Paragraph \</p>   (특징 : CSS를 활용하면 문단 간격 조절 가능)

    ~~~
    # <p> Tag에 CSS를 적용한 사례
    <p style = "margin-top:40px;"> Paragraph </p> : 문단 상단이 40으로 설정됨 
    ~~~

  - 제목 : \<h1> Text <\h1>   (특징 : 1~6까지 존재. 글씨크기 ↑ + bold체 + 자동 줄바꿈)

  - 이미지 삽입 : \<img src = "주소">

  - HyperText(링크) 삽입 : \<a href="링크 주소"> Text \</a>

    ~~~
    # a : anchor (정보의 바다에 닻을 내린다는 시적 표현)
    # href : Hypertext REFerence (닻을 내릴 위치를 지정해줌)
    # target="_blank" (링크가 새로운 탭에서 열리게 하는 옵션)
    # title="주소 설명" (Tooltip으로 링크에 대한 설명이 나오도록 하는 옵션)
    
    → 결과 : <a href="링크 주소" target="_blank" title="주소 설명"> Text </a>
    ~~~



- 속성 (Attribute)

  - Tag의 심화된 문법 : Tag의 이름만으로는 정보가 부족할 때 사용

  - 속성 간의 위치(순서)는 상관이 없음

    ~~~
    # 둘 중 어떻게 써도 상관없음
    <img src="coding.jpg" width="30%">
    <img width="30%" src="coding.jpg">
    ~~~



- 부모/자식 관계

  - 부모 : Tag의 계층 구조에서 상위의 Tag

  - 자식 : Tag의 계층 구조에서 하위의 Tag

    ~~~
    <parent>   # 부모 Tag
       <child></child>   # 자식 Tag
    </parent>
    ~~~

  - 일부 Tag의 경우, 부모-자식이 꼭 함께 붙어다님

    - 리스트 (2대) : 시작/끝(\<ul>, \</ul> 또는 \<ol>, \</ol>) + 항목 (\<li>, \</li>)

      ~~~
      <ul>   # 부모 : Unordered List (= 넘버링 X)
        <li></li>   # 자식
        <li></li>
      </ul>
      
      <ol>   # 부모 : Ordered List (= 넘버링 O)
        <li></li>   # 자식
        <li></li>
      </ol>
      ~~~

    - 표 (3대) : 시작/끝(\<table>, \</table>), 행 생성(\<tr>, \</tr>), 데이터 입력(\<td>, \</td>)

      ~~~
      <table>
         <tr>
            <td>1번 후보</td>
            <td>10%</td>
         </tr>
         <tr>
            <td>2번 후보</td>
            <td>70%</td>
         </tr>
         <tr>
            <td>3번 후보</td>
            <td>20%</td>
         </tr>
      </table>
      ~~~

    

- 문서 구조

  - 웹페이지의 제목 : \<title>, \</title>

  - 웹페이지의 인코딩 형식을 지정 : \<meta charset = "인코딩 형식">

  - 웹페이지의 정보(제목/인코딩 형식/만든 사람 등)를 전달 : \<head>, \</head>

  - 웹페이지의 본문을 전달 : \<body>, \</body>

  - 웹페이지의 시작/끝을 알림 : \<html>, \</html>

    ~~~
    <!doctype html>
    <html>
      <head>
        <title>웹 페이지의 제목</title>
        <meta charset="utf-8">
      </head>
      
      <body>
        웹 페이지의 본문
      </body>
    </html>
    ~~~



- HTML의 역사
  - Internet의 개발 : 미국 국방/통신 목적 (1960년대)
  - Web의 개발 : 스위스에 위치한 CERN에서 개발. [최초의 웹사이트](http://info.cern.ch/) 참조 (1990년대)
  - 기존에는 기업/연구소 위주로 사용되던 인터넷이 Web의 개발로 인해 대중화됨 



- 인터넷을 여는 열쇠 : 서버/클라이언트

  - 서버 (Web Server) : 정보를 제공하는 컴퓨터 (= Server Computer)
    - Web Server : 자신의 컴퓨터에 서버를 직접 설치하는 방법. 어려움 & 공부가 됨.
    - Web Hosting : 서버 설치를 전문 업체에 대행하는 방법. 쉬움 & 공부가 덜 됨.
  - 클라이언트(Web Browser) : 정보를 요청하는 컴퓨터 (= Client Computer)

  ![server_client.JPG](https://github.com/YoungestSalon/TIL/blob/master/server_client.JPG?raw=true) 



- [선택지 1] Web Hosting : GitHub
  - Host : Web Server를 운영하기 위한 컴퓨터
  - Web Hosting 업체 : Host(= Web Server)를 빌려주는 업체
  - 작업 순서
    - [GitHub](https://github.com/) 회원 가입
    - New Repository : Public 옵션, Initialize README 체크
    - Upload files : 지금까지 작업한 코드를 업로드
    - Commit 메시지 작성 → Commit changes
    - Repository → Settings → GitHub Pages → Source → master branch 선택
    - 새롭게 부여받은 .io 주소로 페이지 접속
  - Static web hosting : HTML 파일만을 Web hosting 하는 경우 
    - Dynamic web hosting : HTML + Python. Ruby. PHP 등
  - Web hosting 업체 선정
    - 'Free static web hosting'으로 검색
    - 추천 업체 : [Bitballoon](https://www.bitballoon.com/), [Neocities](http://neocities.org/), Amazon S3, Google Cloud Storage, Azure Blob



- [선택지 2] Web Server 직접 운영
  - 준비물 
    - 항상 켜져 있는 컴퓨터
    - Web Server 프로그램 설치/학습 : Apache, IIS, Nginx 등
    - 집 밖에서 인터넷을 통해 Web Server에 접속할 수 있게 하는 여러가지 설정들
  - 꽤 많은 지식이 필요, 어려움, 실패 가능성이 높음 but 인터넷 동작 원리를 학습 가능
  - Apache 
    - 언제나 1등인, open source, 무료 Web Server 프로그램
    - 설치 방법 검색 : 'How to install apache http server windows(=OS명) 2018(=년도)'
    - Windows 컴퓨터에 apache 설치 : 'How to easy install apache on windows' 검색
  - Bitnami WAMP Stack
    - WAMP : Windows Apache MySQL PHP의 앞 글자를 모은 축약어
    - 작업 순서
      1. Install : 설치 경로 확인, MySQL 비밀번호 기억하기, Cloud 옵션은 해제
      2. 설치 후 Windows Firewall block 경고 메시지 뜨면 'Allow access' 선택
      3. manager-windows.exe 실행 → Go to Application → WELCOME 페이지 뜨는지 확인
      4. manager-windows.exe → Manage Servers 탭 → Apache Web Server를 Start (= 서버 구동)
      5. http://127.0.0.1/index.html 로 접속 → WELCOME 페이지 뜨는지 확인
      6. Bitnami WAMP Stack 설치 폴더 → Apache → htdocs : 기존에 작업한 코드를 덮어씌우기
      7. http://127.0.0.1/index.html 을 다시 읽어오기
  - HTTP의 IP 주소 로딩(http://127.0.0.1/index.html) vs. 브라우저에서 코드 파일 로딩
    1. IP 주소 로딩(http:// ~) : 1대의 컴퓨터 안에서 Web Server - Web Browser 간 통신이 발생
       - HTTP : Hyper Text Transfer Protocol의 약자. Web Server/Browser 간의 통신 규약.
    2. 브라우저에서 코드 파일 로딩(file:// ~) : Web Server 통신 없음. Only Web browser만 작동
  - Windows에서 Server 컴퓨터의 IP 주소를 확인하는 방법
    1. 네트워크 및 공유 센터 열기
    2. 연결(Connection)  항목의 현재 연결된 인터넷 연결 이름을 클릭 (Ex. 무선 네트워크 연결 등)
    3. 자세히 → IPv4 주소 확인 (Ex. 192.168.43.173)
  - Server 컴퓨터의 IP 주소 vs. 127.0.0.1
    - Server 컴퓨터의 IP 주소 (Ex. 192.168.43.173) : 해당 컴퓨터만의 고유한 주소
    - 127.0.0.1 : 전 세계가 공통으로 사용. Web Browser가 설치된 컴퓨터의 주소 (= 자기 자신)
  - Web Server와 Web Browser의 통신 연결하기
    - 조건 : 두 대의 컴퓨터(또는 스마트폰)는 동일한 무선 네트워크, 혹은 동일한 공유기에 연결되어야 함
    - 연결 방법 : Web Browser에서 Web Server의 IP 주소를 입력



- 수업을 마치며
  - 나는 누구, 여기는 어디?
    - 교양 vs. 직업
    - 배운 지식을 활용해보기 : 어려운 문제가 주는 좌절감이 충분히 성숙했을 때 다시 공부하기
    - 지식을 공고히 하는 방법 : 프로젝트 진행, 콘텐츠 제작
  - 향후 수업 계획 : WEB2
    - 좀 더 예쁜 홈페이지 만들기 : CSS
    - 사용자와 상호 작용하는 인터렉티브 홈페이지 만들기 : Javascript
    - 생산성/효율성을 위한 back-end technology : PHP, Node.js, JSP
    - 광고수입 창출하기 : Advertisement



- 코드의 힘
  - 동영상 삽입
    - Tag : \<iframe src="링크 주소"> \</iframe>
    - Youtube 영상 → 공유 → 퍼가기 → Source code 복사 → HTML 파일에 붙여넣기 
  - 댓글 기능 추가
    - Back-end 기술(PHP. Django. Python. JSP 등) & Database가 필요
    - 기계가 남기는 스팸 댓글을 차단할 수 있는 기능(스팸 여부 판단 기능) 필요
    - 사용자 UX 관점 : 이미지 업로드 기능, SNS 연동 기능 등이 필요
    - 대안 : DISQUS / LiveRe 서비스를 사용해서 댓글 기능 추가 가능
    - [DISQUS](https://disqus.com/) → 상단 좌측 Your Sites → New → 중간 Basic Subscribes → 하단 Universal Code
    - Universal Code를 HTML 파일 Body에 붙여넣기 → 서버에 적용 → 댓글/이미지 댓글 작성 가능
    - 참고 : Universal Code를 HTML에 붙여넣어도 Local에서는 작동 불가 (보안 문제로 인해 막힘) 
  - 채팅 기능 추가
    - [Tawk](https://www.tawk.to/) → Admin → Create Repository → 사이트 생성 → Widget Code
    - Widget Code를 HTML 파일 Body에 붙여넣기 → 서버에 적용 → 사이트 하단에 채팅 위젯 생성
    - 참고 : Widget Code를 HTML에 붙여넣어도 Local에서는 작동 불가 (보안 문제로 인해 막힘) 
  - 웹사이트 방문자 분석기
    - [Google Analytics](https://analytics.google.com) → 가입 → Web / App. 선택 → 계정 생성 → 추적 정보 → 추적 코드
    - (또는 Google Analytics → 관리 → 관리자 Tab → 속성 부분 → 추적 정보 → 추적 코드)
    - 추적 코드 → 범용 사이트 태그 복사 → HTML 파일 Head 부분에 붙여넣기  → 서버에 적용
    - 방문자 숫자 확인 : Google Analytics → 보고서 → 실시간 → 개요
    - 방문자 정보 확인 : Google Analytics → 보고서 → 잠재고객 → 지역 / 기술 등

