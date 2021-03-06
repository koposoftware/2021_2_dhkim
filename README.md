# 하나팔로우

[프로젝트 홈페이지 - https://koposoftware.github.io/2021_2_dhkim/](https://koposoftware.github.io/2021_2_dhkim/)

# 1. 프로젝트 개요

<strong>서비스</strong>
- 수익률/거래금액 기준으로 사용자의 랭킹이 부여됩니다. 랭킹 10위까지 금융인플루언서로 선정되어 다른 유저는 포트폴리오를 열람할 수 있습니다.<br>
- 매수매도 기능이 제공됩니다.<br>
- 랭킹투자자의 포트폴리오는 업종별 구성비율을 나타내어 분산투자 종목업종별 정보를 알려주며 계좌 수익률도 비교가능합니다.<br>
<img src="https://user-images.githubusercontent.com/73869190/135980659-fa45491b-c37a-4652-b0ea-924af02c37e7.png" width="45%" height="400"/><img src="https://user-images.githubusercontent.com/73869190/135980947-f03e38a1-b91b-4a24-879e-a096c2fd0e42.png" width="45%" height="400"/>





<strong>장점</strong><br>
- 마음에 드는 포트폴리오의 업종 구성비율과 업종명을 저장할 수 있습니다.<br>
- 저장한 포트폴리오는 기준금액(예수금 또는 입력금액)에서 업종 구성비율을 유지한채 종목과 매수수량을 추천받을 수 있습니다.<br>
- 아래의 그림과 같이 매수를 하면 기준금액(예수금) 대비 미디어 30%, 통신장비 40%, 음식료품 29%의 비율이 유지됩니다. 따라서 자동분산투자가 가능합니다.<br>
<img src="https://user-images.githubusercontent.com/73869190/135838174-c236d881-281b-482f-becc-9f4ae74c2714.png" width="45%" height="300"/><img src="https://user-images.githubusercontent.com/73869190/135838367-e833f96a-0d04-45e2-8f09-8d06603debc1.png" width="45%" height="300"/><br>
- 서비스는 참여자 모두가 이익을 취합니다. 중개인인 하나금융투자는 하트 충전으로 인한 예수금 증가로 현금흐름이 개선됩니다.<br> 
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
<img src="https://user-images.githubusercontent.com/73869190/136058140-e9a5bf6c-3085-485d-83f9-f82d8baf9e05.PNG" width="700" height="300"/>
<br>
## 사용기술
- Spring MVC 기반 웹 어플리케이션 개발
- Coolsms API를 사용한 결제 알림
- Spring Scheduler 랭킹산정을 위한 매일 1번 수익률 업데이트 실행
- Kakao API를 활용한 쿠폰 공유 서비스
- Jsoup를 활용하여 재무제표, 종가 크롤링
- Stored Procedure 기반 매수/매도, 주식뽑기, 종가 업데이트
- Ajax 비동기 통신을 활용한 동적 화면 전환

<br>

## 발표 ppt 
   <img src="ppt.JPG" width="700" height="300"/>[발표자료](/project.pptx)<br>
<br>
## 시연 동영상 
<a target="_blank" rel="noopener noreferrer" href="https://www.youtube.com/embed/fY5uGsL_LnI">
<img src="https://user-images.githubusercontent.com/73869190/135979877-d8579484-2c5c-41ce-ad01-2c0091dc0985.PNG" style="width:800px;">
</a>



<iframe width="640" height="360" src="https://www.youtube.com/embed/fY5uGsL_LnI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  <br>

# 4. 본인 소개



<br>
# 5. 기타
<strong>추천 알고리즘</strong>
- 추천모델로 잔여이익모델사용
- 해당 모델을 통해 기업의 목표주가 설정
- 주가 업데이트시 목표가와 괴리율 측정
- 괴리율에 순위 적용 후, 1순위 부터 추천


   
 
