### 2018.07.20 ~ 2017.07.21 Django Girls Workshop



#### 2018.07.20 1st Day : Setting

- Django Girls Seoul 소개

  - 워크샵 소개, 규칙 안내

  - 튜토리얼 소개 : https://tutorial.djangogirls.org/ko/

    

- Python 설치하기 : 3.6.x 버전

  - <https://www.python.org/downloads/windows/>  

  - 윈도우 32비트 / 64비트 확인 후 다운로드

  - Add Python 3.6 to PATH 선택

    

- Virtualenv 환경 (Virtual Environment) 설정

  ~~~
  $ mkdir djangogirls
  $ cd djangogirls
  
  C:\Users\Name\djangogirls> C:\Python36\python -m -venv myvenv
  # Name : 윈도우 사용자 이름
  # C:\Python36\python : 파이썬 3.6 설치한 경로
  
  C:\Users\Name\djangogirls> myvenv\Scripts\activate
  # Name : 윈도우 사용자 이름
  ~~~

  ~~~
  # 상기 Activate 명령이 실행되지 않는 경우 다음과 같이 설정
  C:\Windows\system32> Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
  -> A 옵션 선택
  ~~~

  

- Django (장고) 설치하기

  ~~~
  $ python3 -m pip install --upgrade pip  # pip의 버전 확인
  $ pip install django~=1.11.0  # django 설치
  ~~~

  

- 코드 에디터 설치하기 : Sublime Text 3, Gedit, Atom 중 선택

  

- Git 설치하기 

  - 기본 설정대로 설치
  - 단, PATH 환경 설정은 '윈도우 커맨드라인에서 Git과 유닉스 도구를 사용' 선택

  

- [GitHub](https://github.com/), [PythonAnywhere](https://www.pythonanywhere.com) 계정 만들기





#### 2018.07.21 2st Day : Setting

- 개념 정리

  - Python : 프로그래밍 언어. 웹 사이트 / 게임 / 소프트웨어 개발 등에 활용 가능.

  - 코드 에디터

  - Django (장고) : 파이썬으로 만들어진 무료 오픈소스 웹 어플리케이션 프레임워크

  - 객체 : 속성과 행동을 모아놓은 것.

  - 객체 지향 설계 : 현실에 존재하는 것을 속성(객체 속성)과 행위(메서드)로 나타내는 것

    ~~~
    블로그 게시글 (Post)
    - 객체 속성 : 제목(Title), 내용(Text), 글쓴이(Author), 작성일, 게시일 등
    - 메서드 : 출판(Publish)
    ~~~

  - 객체 지향 프로그래밍 : 모델의 역할과 행동을 정의하여 알아서 상호작용할 수 있도록 하는 개발 방법

  - Django 모델 : 객체의 한 종류. 모델을 저장하면 그 내용이 데이터베이스에 저장됨.

  - 데이터베이스 : 데이터의 집합



- Command Line 시작하기

  

- Python 시작하기

```
https://tutorial.djangogirls.org/ko/python_introduction/

딕셔너리는 리스트와 유사하지만, 변경(mutable)할 수 있습니다. 딕셔너리가 만들어진 후에도, 그 값을 마음대로 변경할 수 있다는 뜻이지요. 키/값을 나중에 추가할 수 있답니다.

딕셔너리 = 뮤터블
리스트 = 이뮤터블??????
```



- 나의 첫 번째 Django 프로젝트!



- Django 모델



- Django 관리자



- 배포하기



- Django URL



- Django View 만들기



- HTML 시작하기



- Django ORM (Querysets) : 여기까지 했음

