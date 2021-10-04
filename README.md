# 프로젝트 제목

[프로젝트 홈페이지 - https://koposoftware.github.io/template/](https://koposoftware.github.io/template/)

# 1. 프로젝트 개요

<strong>배경</strong>
- 개인 투자자로서 금융인플루언서들은 실제로 어떤 종목을 보유하며, 어떤 업종을 주로 매매하는지에 대하여 궁금증을 갖게 되었습니다.<br>

<strong>서비스</strong>
- 투자자에게 금융 정보를 제공하며 매매가 가능한 통합된 증권 서비스입니다.<br>

<strong>장점</strong>
- 투자자가 보유한 종목, 업종 구성비 등을 살펴 볼 수 있습니다. 이후 포트폴리오의 업종 구성비율인 분산투자 정보를 저장한 후 종목과 매수수량을 추천받을 수 있습니다.

<img src="https://user-images.githubusercontent.com/73869190/135838174-c236d881-281b-482f-becc-9f4ae74c2714.png" width="50%" height="300"/><img src="https://user-images.githubusercontent.com/73869190/135838367-e833f96a-0d04-45e2-8f09-8d06603debc1.png" width="50%" height="300"/>

 <br> 
- 서비스는 참여자 모두가 이익을 취합니다. 중개인인 하나금융투자는 하트 충전으로 인한 예수금 증가로 현금흐름이 개선됩니다.

<img src="https://user-images.githubusercontent.com/73869190/135830662-b6449539-7925-49c0-87c1-7339fa324065.JPG" width="700" height="300"/>
  
<br>
# 2. 프로젝트 제안서


  
   
   
   <img src="https://user-images.githubusercontent.com/73869190/135846180-69287660-5f89-4156-9a54-597a2bc57e44.JPG" width="700" height="300"/>[제안서](/planppt.pptx)<br>
  <br> 

# 3. 프로젝트 결과
## 시스템 아키텍처
<img src="https://user-images.githubusercontent.com/73869190/135837821-0ff0bd5d-5466-4d68-83d2-1c514f013d81.JPG" width="700" height="300"/>
<br>
## ERD
<img src="https://user-images.githubusercontent.com/73869190/135846124-b76b3367-ec8a-4606-818a-0d04f4651d7c.JPG" width="700" height="300"/>
<br>
## 사용기술
- Spring MVC 기반 웹 어플리케이션 개발
- Coolsms API를 사용한 결제 알림
- Spring Scheduler 랭킹산정을 위한 매일 1번 수익률 업데이트 실행
- Kakao API를 활용한 쿠폰 공유 서비스
- Jsoup를 활용하여 재무제표, 종가 크롤링
- Stored Procedure 기반 매수/매도, 주식뽑기, 종가 업데이트
<br>

## 발표 ppt 
   <img src="ppt.JPG" width="700" height="300"/>[발표자료](/project.pptx)<br>
<br>
## 시연 동영상 
<iframe width="640" height="360" src="https://www.youtube.com/embed/fY5uGsL_LnI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  <br>

# 4. 본인 소개



|이름 |김도희|<img src="https://user-images.githubusercontent.com/73869190/135850791-0505c321-e07c-43e1-9999-87ea096fa739.jpg" width="70" height="90"/>|
|연락처 | gmlwjd6066(@)naver.com|
|skill set| Frontend - HTML, CSS, Javascript|
| | Backend - Java, Spring, Oracle|
|자격증|  SQLD, 정보처리기사, 신용분석사, AFPK|
|수상| 폴리텍 창업경진대회 입상, 특성화 금융학회 2015 금상, 특성화 금융학회 2016 은상|
|인턴| 기술보증기금 디지털|


# 5. 기타
<strong>추천 알고리즘</strong>
- 추천모델로 잔여이익모델(RIM)사용
- 해당 모델을 통해 기업의 목표주가 설정
- 주가 업데이트시 목표가와 괴리율 측정
- 괴리율에 순위 적용 후, 1순위 부터 추천

# 홈페이지 설정
 본인 repository에서 "Setting"를 들어가서 GitHub Pages에서 설정 변경.
* Source
 Source에서 원하는 branch와 directory 설정한다. 
 기본값은 master 에 root를 설정 
 Save 버튼 꼭 누른다.
 
 * Theme Chooser
 theme을 변경하여 좀더 이쁜 홈페이지를 만든다.
   
   <img src="homepage.JPG"/><br>
   
 
