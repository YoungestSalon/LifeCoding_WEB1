#### 생활코딩 WEB2 Javascript 요약



- 수업 소개

  - Javascript의 개발 동기
    -  HTML은 정적임 (= 한번 화면에 출력되면 변경되지 않음
    - 하지만, 게임처럼 동적으로 사용자와 상호작용하는 웹 페이지를 만들고 싶어짐

- 수업의 목적

  - Chrome 브라우저의 개발자 도구

    - 마우스 우측 버튼 클릭 → 검사 : Element 탭 (= HTML Tags)
    - body 태그의 style 속성 : 속성값으로는 반드시 CSS가 옵니다.

  - Javascript의 정의(특성)

    - Javascript 버튼을 클릭 = body 태그에 style 속성이 추가 = 디자인이 변경됨
    - 즉, Javascript는 HTML을 제어하는 언어임 → 웹 페이지를 동적이게 만들어줌



- HTML과 JS의 만남 : Script 태그 (ex1.html 파일 참조)
  - Javascript는 기본적으로 HTML 위에서 동작하는 언어임
  - 웹 페이지에 JS 추가
    - 웹 브라우저에게 JS의 시작점을 알려줘야 함 (Script 태그)
    - 웹 브라우저는 script 코드 안쪽을 Javascript로 이해함
  - Javascript의 1+1 : 2로 출력 (but HTML의 1+1 : 1+1 그대로 출력



- HTML과 JS의 만남 : 이벤트 (ex2.html 파일 참조)

  - Javascript가 사용자와 상호작용하는 과정에서 핵심적인 역할을 함

  - 웹 페이지에 Javascript 버튼 추가 : input 태그

    ~~~
    # value : 버튼에 글씨를 쓰고 싶을 때 사용하는 속성
    
    <input type = "button" value = "test">
    ~~~

  - 버튼을 눌렀을 때 경고창이 뜨게 하려면 : alert 태그

    ~~~
    # onclick : 속성값으로는 반드시 Javascript가 와야 함
    # onclick 속성의 속성값은 웹 브라우저가 기억하고 있다가, onclick 속성이 위치한 태그를 사용자가 클릭했을 때 Javascript 문법에 따라 해석해서 그대로 동작함
    
    <input type = "button" value = "test" onclick = "alert('Hi!')">
    ~~~

  - 웹 브라우저 위에서 일어나는 일들 = 사건 (Event)

    - onclick : 특정한 이벤트가 일어났을 때 기억하고 있던 JS가 실행되게 함

    - 웹 브라우저 상의 이벤트 : 무한히 많은 경우의 수가 존재

    - 대표적인, 사용자에게 유용할만한 이벤트 : 10~20개 내외가 이미 정의되어 있음

      1. 마우스 클릭 : onclick 속성

         ~~~
         <input type = "button" value = "test" onclick = "alert('Hi!')">
         ~~~

      2. 입력란에 무언가를 입력해서 내용이 변함 : onchange 속성

         ~~~
         <input type = "text" onchange = "alert('Change!')">
         ~~~

      3. 사용자가 어떤 키를 누름 : onkeydown 속성 (Javascript keydown event attribute 검색 결과 참조)

         ~~~
         <input type = "text" onkeydown = "alert('Key down!')">
         ~~~

    - 이미 정의된 이벤트 항목을 사용 : 사용자와 상호작용하는 웹 사이트 구축 가능



- HTML과 JS의 만남 : 콘솔

  - Javascript를 실행시키는 실용적인 방법

  - Script 태그, 이벤트 : Javascript 실행을 위해 웹 페이지 파일을 생성해야 함

  - Console 기능

    ![.length는 문자열의 길이를 알려줍니다](https://github.com/YoungestSalon/Outputs/blob/master/Online%20Course/Youtube_LifeCoding_WEB2_Javascript/console_example.JPG?raw=true)

    1. Chrome 브라우저의 개발자 도구 → '검사'의 Console 탭
    2. 또는, '검사'의 Elements 탭에서 ESC를 누르면 하단에 Console 창이 생김
    3. 파일을 만들지 않고도 Javascript 코드를 즉석에서 실행 가능 : 간단한 계산기 등
    4. Console에서 실행하는 Javascript : 웹 페이지 안에 삽입된 것처럼 동작함
       - 즉, Console에서 Javascript를 실행시키면 웹 페이지를 대상으로 작동함
       - 실제 사용 사례 : 페이스북 생활코딩 그룹 도서 증정 이벤트의 댓글 추첨

  - Console의 효용

    - 웹 페이지 개발 뿐만 아니라, 이미 완성된 웹 사이트의 활용에도 사용 가능
    - 즉, 코딩의 효용 = 개발자가 될 수 있음 + 내가 가진 현실의 문제를 해결 가능


- 데이터타입(자료형) : 문자열과 숫자

  - Javascript의 데이터 타입(자료형) : [Mozilla 재단 페이지](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Data_structures) 참조

  - 숫자(Number) 

    - 아라비아 숫자를 그대로 기재, 이항/산술 연산자 사용 가능 (ex. 1+1)

    - 산술 연산자 : 덧셈(+), 뺄셈(-), 곱셈(*), 나눗셈(/)

  - 문자열(String) 

    - 따옴표로 시작하고 끝남 (ex. "Hello world!")

    - 문자열의 길이 측정 : '문자열'.length (ex. 'Hello world!'.length)

    - 그 외 다양한 기능이 있음 : [Mozilla 재단 페이지](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/length) 참조

      ~~~
      "Hello world".toUpperCase(); // 소문자 → 대문자로 바꿔줌
      'Hello world'.indexOf('wor') // 'wor'은 6번째 글자에서 시작
      '	Hello world	'.trim() // 공백을 자동으로 제거해줌
      ~~~

    - 1+1 = 2 but "1" + "1" = "11" : 숫자도 따옴표 사이에 들어가면 문자열이 됨



- 변수와 대입 연산자

  ~~~
  x = 1 // x는 변수, '='은 대입 연산자
  y = 1
  x+y = 2
  
  x = 1000
  x+y = 1001
  ~~~

  - 변수(Variable) 

    - 바뀔 수 있는 어떤 값 

    - 반대 개념 : 상수constant  = 항상 일정한 값. 숫자 등 (ex. 1)

    - 변수 선언 : var 변수이름 = '값'; (ex. var name = 'YoungestSalon';)

    - 변수를 사용하는 이유는 너무 많아서 하나만 골라서 언급하기가 어려울 정도

      ~~~
      // 변수 사용의 예시 : 로렘 입숨 중간에 이름을 넣었다 바꾸려면?
      
      var name = 'YoungestSalon';
      alert('Lorem ipsum dolor sit amet, consectetur ' +name+ ' adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ' +name+  'ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur ' +name+ ' sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
      ~~~

  - 대입 연산자 

    - 오른쪽 항에 있는 값을 왼쪽에 있는 변수에 대입한다는 의미
    - 좌항과 우항을 결합해서 우항의 값을 만들어낸다는 의미도 있음



- 웹브라우저 제어

  - Javascript를 통해 할 수 있는 일 중 하나임

    ~~~
    <body style = "background-color:black; color:white;">
    
    // body 태그에 style을 설정하면 웹 페이지 디자인을 바꿀 수 있음
    // 문제는, HTML은 style을 한번 설정하면 그 디자인이 그대로 고정됨
    // but, Javascript를 이용하면 특정 이벤트에 따라 style 설정 변경 가능
    
    // Javascript로 style 변경을 구현하려면 몇 가지 지적 부품이 필요함
    // = CSS 코드, JS로 CSS의 대상인 태그를 제어하는 방법에 대한 지식 필요
    ~~~

  - 향후 수업 내용

    1. CSS의 가장 본질적이고 중요한 문법들
    2. Javascript를 이용해서 제어하고자 하는 태그를 선택하는 방법



- CSS 기초 : style 속성, style 태그, 선택자

  - [생활코딩 WEB2 CSS 요약](https://github.com/YoungestSalon/Outputs/blob/master/Online%20Course/Youtube_LifeCoding_WEB2_CSS/Youtube_LifeCoding_WEB2_CSS_v1.md) 참조 : \<div>, \<span>, \<style>, 선택자(selector) 등

    ![CSS의 구조](https://github.com/YoungestSalon/Outputs/raw/master/Online%20Course/Youtube_LifeCoding_WEB2_CSS/CSS_structure.JPG?raw=true)



- 제어할 태그 선택하기





- 프로그램, 프로그래밍, 프로그래머