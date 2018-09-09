#### [생활코딩 WEB2 CSS](https://www.youtube.com/playlist?list=PLuHgQVnccGMAnWgUYiAW2cTzSBywFO75B) 요약



> 공부는 많이 했는데, 그것을 써먹지 않는다면 우리 뇌는 억울해해요.
> 뇌가 억울해하는 것을 방치하면 뇌는 수단과 방법을 가리지 않고 공부를 하지 않을 방법을 찾는다고 저는 믿어요.이렇게 되면 공부와 멀어지게 되는겁니다.
>
> 반대로, 공부는 적게 했는데 그것을 최대한 써먹고 있다면 뇌는 공부의 효용을 신통하게 볼겁니다.
> 공부의 효과에 뇌가 감탄할수록 뇌는 공부를 자꾸 하려고 하게 되어 있습니다.
> 공부를 안하면, 뇌가 혹사 당한다는 것을 알거든요.
>
> < 생활코딩 WEB2 CSS 15강 중 >



- 수업 소개
  - HTML : WEB이 최초에 개발됐을때 사용한 유일한 언어, 문서 작성/인터넷을 통한 전송 기능 지원
  - 불만족 : 아름답고 보기 좋은 Web page를 만들고 싶다는 새로운 욕구가 출현함



- CSS가 등장하기 전의 상황

  - 불만족 발생 : 글꼴, 문자의 크기/색상, 정렬, 문서의 배경 이미지 삽입 등의 새로운 요구사항이 생김

  - 해결책 : 쉽지만 한계가 있는 방법 vs. 어렵지만 근본적인 해결책

    - 쉽지만 한계가 있는 방법 : 이미 존재하는 HTML에 디자인과 관련된 새로운 Tag를 추가
    - 어렵지만 근본적인 해결책 : 디자인에 최적화된 완전히 새로운 언어를 개발

  - 불만족을 해결하기 위한 최초의 시도 = 쉽지만 한계가 있었던 방법 

    ~~~
    # <font> 태그 사용 예시 : 이 웹페이지에 있는 모든 a 태그의 글꼴 색상을 빨간색으로 변경
    
    <head>
      <title>WEB - CSS</title>
      <meta charset = "utf-8">
    </head>
    <body>
      <h1><a href="index.html"><font color="red">WEB</font></a></h1>
      <ol>
        <li><a href="1.html"><font color="red">HTML</font></a></li>
        <li><a href="2.html"><font color="red">CSS</font></a></li>
        <li><a href="3.html"><font color="red">JavaScript</font></a></li>
      </ol>
    </body>
    ~~~

    - 장점 : Web page의 디자인이 가능해짐 (문자의 크기/색상 등) 
    - 단점
      1. WEB의 본질(내용/정보)과 디자인에 대한 부분이 모두 Tag로 처리 : 정보 가치가 없는 Tag가 발생 
      2. Web page의 디자인을 수정하려면 각각의 구성 요소에 대한 Tag를 일일이 바꿔줘야 함
    - 결론 : 지금은 사용하지 않음



- CSS의 등장

  ~~~
  # <style> 태그 사용 예시 : 이 웹 페이지에 있는 모든 a 태그의 글꼴 색상을 빨간색으로 변경
  # style 태그의 기능 : HTML 문법을 사용하면서 CSS 적용 범위의 시작/끝을 알려줌
  # style 태그 안의 'a' 부분 = 선택자 : 어떤 HTML 태그에 CSS 스타일을 적용할 것인가?
  # style 태그 안의 'color:black;' 부분 = 효과 : 선택된 HTML 태그에 어떤 CSS를 적용할 것인가?
  
  <head>
    <title>WEB - CSS</title>
    <meta charset = "utf-8">
    <style>
      a {
        color:red;
      }
    </style>
  </head>
  <body>
    <h1><a href="index.html">WEB</a></h1>
    <ol>
      <li><a href="1.html">HTML</a></li>
      <li><a href="2.html">CSS</a></li>
      <li><a href="3.html">JavaScript</a></li>
    </ol>
  </body>
  ~~~

  - 불만족을 해결하기 위한 새로운 시도 = 어렵지만 근본적인 해결책

  - 고려해야 할 점

    - 웹 브라우저가 처음 나왔을 때 : HTML 언어만 사용 → 기본적으로 위의 코드를 HTML로 인식함
    - CSS, HTML은 다른 언어 체계임 →  CSS 사용 범위를 HTML 언어로 웹 브라우저에게 알려줘야 함

  - 단점 : 새로운 언어를 배워야 하는 학습자의 부담, 새로운 언어를 처리해야 하는 웹 브라우저의 부담

  - (단점을 상쇄하고도 남을만큼 큰) 장점

    - WEB의 본질(내용/정보)과 디자인에 대한 부분이 분리됨 : HTML에는 정보 가치가 있는 Tag만 존재 
    - 디자인 작업의 효율성 증대 : 디자인 수정 시, 각각의 Tag를 일일이 변경하는 노가다 작업 필요 없음
    - 기존 방법(Ex. font 태그)은 코드의 중복이 존재 → CSS = 중복 제거 = 웹 페이지의 사이즈가 작아짐

    - 웹 페이지 최초 개발자가 가진 의도가 더 명확히 드러남 → 웹 페이지의 유지/보수가 편리해짐
    - 웹 페이지 코드의 가독성이 높아짐



- CSS의 기본 문법

  - 웹 페이지에 디자인을 적용하는 방법 두 가지 : 태그 / 속성

    ~~~
    # HTML의 style 속성 사용 예시 : '막내살롱'이라는 부분만 빨간색으로 만드려면?
    # style 속성 : "" 안에는 CSS의 스타일 속성이 기재되어야 함
    # style 속성의 'color:red;' 부분 = 효과 : 선택된 HTML 태그에 어떤 CSS를 적용할 것인가?
    # style 속성 : CSS 적용 대상이 이미 지정되어 있음 = 선택자는 필요하지 않음
      
      <body>
        <h1><a href="index.html">Louise Lee's Homepage</a></h1>
        <ol>
          <li><a href="1.html">소개</a></li>
          <li><a href="2.html" style = "color:red">막내살롱</a></li>
          <li><a href="3.html">모두의 조언자</a></li>
        </ol>
      </body>
    ~~~

  - (실습) 웹 페이지의 모든 a 태그에 대해 밑줄을 없애려면?

    ~~~
    # text-decoration: none; (= 텍스트에 대한 꾸밈 효과를 제거)
    
      <head>
        <style>
          a {
            text-decoration: none;
          }
        </style>
      </head>
    ~~~

  - (실습) 웹 페이지의 '막내살롱' 부분에만 밑줄을 지정하고 나머지 a 태그는 모두 밑줄을 없애려면?

    ~~~
      <head>
        <style>
          a {
            color:black;    <!-- 스타일과 스타일 사이는 세미콜론(;)으로 구분 -->
            text-decoration: none;    <!-- 일단 모든 a 태그의 밑줄을 없애고 -->
          }
        </style>
      </head>
    
      <body>
        <h1><a href="index.html">Louise Lee's Homepage</a></h1>
        <ol>
          <li><a href="1.html">소개</a></li>
          <li><a href="2.html" style = "color:red; text-decoration:underline;">막내살롱</a></li>    <!-- 막내살롱 부분에만 underline(밑줄) 스타일을 지정해줌 -->  
          <li><a href="3.html">모두의 조언자</a></li>
        </ol>
      </body>
    ~~~



- 혁명적 변화

  - CSS의 이론적인 부분에 대한 이해

    ![CSS의 구조](https://github.com/YoungestSalon/Outputs/blob/master/Online%20Course/Youtube_LifeCoding_WEB2_CSS/CSS_structure.JPG?raw=true)

  - CSS를 공부하는 구조 = 검색 등을 Selector와 Property의 종류를 학습하는 과정



- CSS 속성(Declaration)을 스스로 알아내기 : 인터넷 검색을 통한 학습

  - (실습) 웹 페이지의 'Louise Lee's Homepage' 부분만 글씨를 크게 하고 가운데 정렬하려면?

    ~~~
      <head>
        <style>
          h1 {
             font-size: 45px;   <!-- 검색어 : CSS text size property -->
             text-align: center;   <!-- 검색어 : CSS text align center property -->
          }
        </style>
      </head>
    ~~~

  - 인터넷으로 CSS property를 검색할 수 있다 = 모든 CSS property를 암기할 필요가 없다

  - 에디터(Atom 등)가 CSS property의 자동완성 추천 기능을 가지고 있다 = CSS property 안 외워도 된다



- CSS 선택자(Selector)의 기본

  - (실습) 구현하려고 하는 조건 

    1. 웹 페이지 상의 모든 링크를 검은색으로 변경
    2. 사용자가 방문한 적이 있는 페이지(링크)는 회색으로 변경 : class = "saw"
    3. 현재 사용자가 머물고 있는 페이지(링크)는 빨간색으로 변경 : id = "active"

    ~~~
      <head>
        <style>
          #active {		<!-- ID 선택자. ID 이름 앞에는 #을 붙임 -->
            color:red;
          }
          .saw {		<!-- class 선택자. class 이름 앞에는 콤마(.)를 붙임 -->
            color:gray;
          }
          a {		<!-- tag 선택자 -->
            color:black;
            text-decoration: none;
          }
          h1 {
            font-size: 30px;
            text-align: center;
          }
        </style>
      </head>
    
      <body>
        <h1><a href="index.html">Louise Lee's Homepage</a></h1>
        <ol>
          <li><a href="1.html" class="saw">소개</a></li>
          <li><a href="2.html" class="saw" id="active">막내살롱</a></li>      
          <li><a href="3.html">모두의 조언자</a></li>
        </ol>
      </body>
    ~~~

  - CSS 선택자의 작동 원칙

    - class 속성의 값 : 여러 개의 값을 쓸 수 있으며, 띄어쓰기로 구분함 (ex. class = "saw active")
    - 하나의 tag에는 여러 개의 속성이 들어올 수 있음
    - 여러 개의 선택자를 통해 하나의 tag를 공동으로 제어할 수 있음

  - CSS 선택자의 작동 원리

    - ID 선택자의 값 : 동일한 웹 페이지 내에서는 unique 해야 함
    - 즉, 동일한 값을 가진 ID 선택자를 동일한 웹 페이지에 중복 사용 (ex. id="active"의 중복 사용) : 불가
    - 즉, ID 선택자는 태그 선택자에 더 구체적임 → 예외 처리의 편의성을 위해 우선 순위를 높임
    - (결론 1) 우선 순위 : ID 선택자 > class 선택자 > 태그 선택자. ID 선택자가 제일 높음
    - (결론 2) 동일한 종류의 선택자가 여러 개인 경우, 가장 마지막에 작성된 것이 우선 순위가 높음

  - 더 많은 CSS Selector는 [w3schools.com](https://www.w3schools.com/cssref/css_selectors.asp)을 참조 (Google 검색어 : CSS Selector)

    - element : 태그와 같은 뜻




- 박스 모델

  - 우리가 구현하고자 하는 사이트 디자인 : 박스 모델 개념 적용이 필요

    ![디자인 시안](https://github.com/YoungestSalon/Outputs/blob/master/Online%20Course/Youtube_LifeCoding_WEB2_CSS/Box_design.JPG?raw=true)

  - 박스 모델

    - HTML의 여러 태그들은 성격과 쓰임새에 따라 화면 전체를 쓰는 것이 편한 경우에는 자동 줄바꿈 됨

      1. Block level element : 화면 전체를 쓰는 것이 편리함 → 자동으로 줄바꿈 (ex. 제목 태그 (h1))
      2. Inline element : 링크 앞뒤의 컨텐츠가 줄바꿈으로 잘리면 불편함 → 줄바꿈 적용하지 않음
      3. Block level element → Inline element 변경 시 'display: inline;' 
      4. Inline element → Block level element 변경 시 'display: block;'
      5. (참고) 특정 태그만 웹 페이지에서 전부 안 보이게 하려면 'display: none;'

    - 각 태그의 존재감(부피)를 정확히 확인하려면? 테두리(border)를 그려주면 됨.

      ~~~
      <!DOCTYPE html>
      <html>
        <head>
            <meta charset="utf-8">
            <title></title>
            <style media = "screen">
              /*
              h1 tag = block level element
              */
              h1{
                border-width: 5px;
                border-color: red;
                border-style: solid;
                display: inline;
              }
              /*
              strong = inline element
              */
              strong{
                border-width: 5px;
                border-color: red;
                border-style: solid;
                display: block;
              }
             </style>
        </head>
        <body>
          <h1>자기소개</h1> 저는 <strong><u>이은지</u></strong>입니다. </p>
        </body>
      </html>
      ~~~

    - 코드 사이에 중복이 있어 깔끔하지 않은 부분을 정리 

      1. 선택자 (h1, strong) : 콤마(.) 를 사용
      2. Value (5px, soild, red) : 빈 칸으로 구분. 순서 상관 없음.

      ~~~
            <style media = "screen">
              h1, strong{
                border: 5px solid red;
              }
             </style>
      ~~~

    - 박스 모델을 다양하게 활용할 수 있게 하는 property options



      ![요약](https://www.w3.org/TR/CSS2/images/boxdim.png)
    
      1. 컨텐츠와 테두리 사이에 여백을 주려면 padding property를 사용
    
         ```
                 h1, strong{
                   border: 5px solid red;
                   padding: 20px;
                 }
         ```
    
      2. 테두리와 테두리 사이의 간격을 지정하거나 없애려면 margin property를 사용
    
         ```
                 h1, strong{
                   border: 5px solid red;
                   padding: 20px;
                   margin: 0;
                 }
         ```
    
      3. Block level element가 화면 전체를 쓰지 않도록 하려면 width property를 사용
    
         ```
                 h1{
                   border: 5px solid red;
                   padding: 20px;
                   margin: 0;
                   display: block;
                   width: 100px;
                 }
         ```
    
      4. 웹 페이지 개발 시 개발자 도구의 도움을 받을 수 있음
    
         - Chrome 브라우저에서 마우스 오른쪽 버튼 → 검사(N) : 소스 코드 확인 가능
         - 검사(N) → 하단의 style 탭 : 해당 웹 페이지에 적용된 CSS style 정보를 모아서 확인 가능
    
    - 정리 : 박스 모델의 개념
    
      1. 웹 페이지 디자인의 핵심적 요소
      2. 각각의 HTML 태그를 일종의 박스(box) 취급하여 부피감을 결정하는 것



- 박스 모델 써먹기

  - 제목(h1 태그) 하단에 가로 줄 긋기

    ~~~
          h1 {
            border-bottom:1px solid gray;
            margin: 0;
            padding: 20px;
          }
    ~~~

  - 컨텐츠 리스트와 컨텐츠를 분리하기 위해 세로 줄 긋기

    ~~~
          ol{
            border-right: 1px solid gray;
            width: 100px;
            margin: 0px;
            padding: 20px;
          }
    ~~~

    1. ol 태그 우측에 세로 줄 긋기 : border-right
    2. ol 태그는 Block level element이므로 크기 조정이 필요 : width
    3. 가로 줄과 세로 줄 사이의 여백 없애기 : margin
    4. 세로 줄과 컨텐츠 사이의 여백 설정 : padding

  - 가로 줄 바깥의 빈 부분 제거 : body 태그의 margin 조정

    ~~~
          body{
            margin: 0;
          }
    ~~~


- 그리드 소개

  - 화면 하단에 위치한 컨텐츠를 컨텐츠 리스트의 우측으로 이동시키기 : 그리드 개념 적용이 필요

    ```
    <!DOCTYPE html>
    <html>
      <head>
        <meta charset = "utf-8">
        <title></title>
        <style>
          #grid{
            border: 5px solid pink;
            display: grid;
            grid-template-columns: 150px 1fr;
          }
          div{
            border: 5px solid gray;
          }
        </style>
      </head>
      <body>
        <div id="grid">
          <div>Navigation</div>
          <div>버킷 리스트<br>네팔에<br>도서관/컴퓨터실이 딸린 학교를 짓기<br></div>
        </div>
      </body>
    </html>
    ```

    1. div 태그 
       - 디자인을 위해 특정 범주를 지정
       - 별도의 의미(ex. h1 태그 = 제목)는 없는 디자인 목적 태그
    2. span 태그 : div 태그와 동일하나, div는 Block level element이고 span은 Inline element임.
    3. style 태그 : div 태그의 부피감을 확인하기 위해 박스 처리
    4. id="grid" : 그리드 사용에 필요한 부모/자식 관계를 설정하고 부모에게는 grid라는 ID 값을 부여함
    5. #grid의 border : grid라는 div의 부피감을 확인하기 위해 별도로 박스 처리
    6. #gird의 display 
       - Navigation과 Article 사이에 grid를 생성
       - 그리드의 장점 : 특정 요소의 텍스트 증가 → 이에 맞춰서 자동으로 모든 요소들의 공간 크기 증가
    7. #grid의 grid-template-columns
       - template-columns : Navigation과 Article이 가로로 나란히 배치되도록 함
       - 150px : 첫 번째 요소(Navigation)는 150px을 사용 (= 창 크기가 변경되더라도 크기 고정)
       - 1fr : 두 번째 요소(Article)가 나머지 공간을 모두 사용 (= 창 크기가 변경되면 자동으로 조정됨)
       - (참조) 'grid-template-columns: 1fr 2fr;' 설정 : 창 크기가 변경될 시 1:2로 공간 배치가 자동 조정

  - HTML/CSS/Javascript의 최신 기술(ex. 그리드) 사용 시, 사용 가능 여부를 먼저 확인해야 함 : [추천 사이트](https://caniuse.com)

    ![caniuse.com의 CSS Grid 검색 결과](https://github.com/YoungestSalon/Outputs/blob/master/Online%20Course/Youtube_LifeCoding_WEB2_CSS/caniuse_CSSgrid.JPG?raw=true)

    - 빨간색 = 사용 불가, 녹색 = 사용 가능.  Ex. Chrome은 49 version은 불가 / 63 version은 grid 지원.
    - 녹두색 = 부분적으로 지원함.  Ex. Internet Explorer(IE) 11 version : grid를 부분적으로만 사용 가능.
    - Global = 87.25% : 전 세계 적으로는 87.25%가 grid 기능 사용 가능



- 그리드 써먹기

  - 그리드 설정을 위한 부모/자식 관계 설정 : \<div id = "grid">, \<div id = "article">

    ~~~
        <style>
          #grid{
            display: grid;
            grid-template-columns: 200px 1fr;
          }
          #grid ol{
            padding-left: 33px;
          }
          #article{
            padding-left: 25px;
          }
        </style>
    ~~~

  - style 태그 내 grid ID에 대한 설정 추가 : display, grid-template-columns

  - style 태그 내 ol (컨텐츠 리스트 부분) padding 크기 설정 : 새로운 크기는 개발자 도구를 사용하여 결정

  - ol 태그가 다른 부분에서도 쓰일 수 있기 때문에 id #grid가 부모인 ol에만 padding 설정 : #grid ol

  - ol padding-left 로 인해 우측으로 지저분하게 밀려난 id = "article" (컨텐츠 부분) 부분의 padding 설정



- 미디어 쿼리 소개

  - 반응형 디자인 (Responsive Web)

    - 개념 : 화면 크기에 따라 웹 페이지의 각 요소들이 반응하여 최적화된 모양으로 자동 변경되는 기능
    - 현대적인 웹 어플리케이션을 만드는데 있어서 중요한 요소

  - 미디어 쿼리

    - 화면의 특성이 특정 조건을 만족할 때에만 특정 HTML 요소가 숨겨지거나 나타나게 하는 CSS의 기능
    - (예시) 특정 HTML 요소가 작은 화면에서는 자동으로 숨겨지고, 큰 화면에서는 나타나게 하는 방법
    - 순수한 웹 - CSS - 을 통해 반응형 디자인이 구현 가능하도록 만들어 주는 핵심 개념 
    - 여러 형태의 화면이 존재하는 세상(모니터, 휴대전화 가로/세로 모드, 태블릿 등)에서 중요한 존재

  - 미디어 쿼리의 구현 (예시: 화면의 크기가 800px 이상이면 div 태그가 안 나타나도록 변경)

    1. 구글 크롬 개발자 도구 : 화면의 크기 확인. 화면 우측 상단에 표시됨.  (Ex. 825px x 487px)

    2. 코드 작성 : 화면의 최소값(min-width)이 800 = 화면 크기가 800 이상임

       ~~~
           <style>
             @media(min-width: 800px){
               div{
                 display:none;
               }
             }
           </style>
       ~~~



- 미디어 쿼리 써먹기

  - 개편 목표 : 화면의 크기가 작아졌을 때 

    1. 구분선을 없애고, 
    2. 컨텐츠를 컨텐츠 리스트 하단으로 이동하게 하고
    3. 제목(Title)의 크기를 좀 더 작게 조정하려면?

  - 구현

    1. 화면의 크기 결정 @구글 크롬 개발자 도구 : 화면 레이아웃의 변경 기준을 800px로 결정

    2. 코드 작성 : 화면의 최대값(max-width)이 800 = 화면 크기가 800 이하임

       ~~~
             @media(max-width:800px){
               #grid{
                 display: block;
               }
               ol{
                 border-right: none;
               }
               h1 {
                 border-bottom: none;
               }
             }
       ~~~

       - #grid {display: block;} : 화면 크기가 800 이하이면 컨텐츠를 컨텐츠 리스트 하단으로 이동시킴
       - ol {border-right: none;} : 컨텐츠 리스트 우측의 선을 없애버림
       - h1 {border-bottom: none;} : 제목 하단의 선을 없애버림



- CSS 코드의 재사용

  - 생활코딩 WEB2 CSS 과정에서 열심히 배우고 만든 CSS 코드를 다른 페이지에도 적용해보자!

    1. CSS 코딩 : 다른 페이지에도 각각 style 태그를 복사 + 붙여넣기 하기
    2. Grid 그래픽 적용을 위한 부모/자식 선언 : \<div id = "grid">, \<div id = "article"> 태그 설정

  - 극단적 상상 : 웹 페이지가 4개가 아니라 1억개인데 누군가가 CSS 설정 변경을 요청한다면?

    1. 이직을 고려한다 : 노가다... 이건 무리야, 탈출해! (웃음)

    2. 각각의 웹 페이지에 있는 CSS style 코드를 하나로 합쳐서 중복을 제거한 후 CSS 설정을 수정

       - CSS style 코드 부분을 style.css 라는 별도의 파일에 저장

       - 각각의 웹 페이지에 있는 CSS style 코드를 대체 : style.css 파일을 불러오는 코드로 변경

         ```
         <link rel="stylesheet" href="style.css">
         ```

  - 극단적 상상 2 : 웹 페이지가 4개가 아니라 1억개인데, 누군가가 모든 CSS style이 같은 설정인지를 물어봄

    1. 이직을 고려한다 : 노가다 끝판왕... 이건 무리야, 어서 탈출해! (웃음)
    2. 현실적으로 불가능한 작업 : 유지/보수와 프로그램 작동 시의 효율을 위해 코드의 중복 제거가 필요

  - style.css : 코드의 재사용을 가능하게 함

    - 유지/보수 작업의 효율성 증대
    - 해당 코드를 신규 유저가 사용할 시 좀 더 쉽게 이해 가능 = 가독성이 높아지고 진입 장벽은 낮아짐
    - style.css를 캐시로 저장 = 웹 페이지 로딩 시 불러오는 코드의 양 ↓ : 인터넷 사용료 ↓, 로딩 속도 ↑



- 수업을 마치며
  - CSS의 핵심 : 선택자(속성의 정확한 표현을 가능하게 함), 속성(풍부한 표현력)