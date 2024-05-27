# pathorder_app
kdit4-green Final Project Team 3

# Pathorder App Project

# 📖 앱소개
> 커피 구매 앱으로 자신과 가까운 거리에 있는 카페들을 조회하고 구매, 결제까지 할 수 있는 커피 구매 앱
# 📽️ 시연영상

[App 시연영상](https://www.youtube.com/watch?v=P4SWClE4wd8)

[Web 시연영상](https://www.youtube.com/watch?v=1SRf4YaUzlU)

# 📚 발표자료
[PPT](https://github.com/cowcat0722/pathorder_copy_app/files/15451115/KDT.3.3.pdf)

# ⏰ 프로젝트 기간
2024.04.17 ~ 2024.05.22
# 👨‍👩‍👧‍👧 팀원 소개
### Team-Leader

|                                                        조정현                                                        |
|:---------------------------------------------------------------------------------------------------------------------:|
| <img src="https://avatars.githubusercontent.com/u/126438339?v=4" alt="profile" width="100" height="100"> | 
|                                    [(@9oj0e)](https://github.com/9oj0e)                                 |

### Front-End

|                                                   박찬혁                                                    |                                                   최윤정                                                    |
|:--------------------------------------------------------------------------------------------------------:|:--------------------------------------------------------------------------------------------------------:| 
| <img src="https://avatars.githubusercontent.com/u/153582126?s=400&u=72dd9bfa0d3f017d2c237e4f8a58439e58d21930&v=4" alt="profile" width="100" height="100"> | <img src="https://avatars.githubusercontent.com/u/129649095?v=4" alt="profile" width="100" height="100"> | 
|                                    [(@cowcat0722)](https://github.com/cowcat0722)                                    |                              [(@yunchocopie)](https://github.com/yunchocopie)                              |

### Back-End

|                                                   장현정                                                   |                                                   김성재                                                    |
|:-------------------------------------------------------------------------------------------------------:|:--------------------------------------------------------------------------------------------------------:| 
| <img src="https://avatars.githubusercontent.com/u/139729358?v=4" alt="profile" width="100" height="100"> | <img src="https://avatars.githubusercontent.com/u/153582301?v=4" alt="profile" width="100" height="100"> | 
|                              [(@Hyeonjeon...)](https://github.com/Hyeonjeong-JANG)                              |                               [(@kimsjae)](https://github.com/kimsjae)                               |


# ⚙️ 기술 스택
## IDE
<img src="https://img.shields.io/badge/IntelliJ IDEA-000000?style=for-the-badge&logo=intellijidea&logoColor=white"> <img src="https://img.shields.io/badge/Android Studio-34A853?style=for-the-badge&logo=android&logoColor=white">
## FrameWork
<img src="https://img.shields.io/badge/spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white"> <img src="https://img.shields.io/badge/flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white">
## DB
<img src="https://img.shields.io/badge/h2-000000?style=for-the-badge&logoColor=white"> <img src="https://img.shields.io/badge/mysql-4479A1?style=for-the-badge&logo=mysql&logoColor=white">
## 사용기술
### Front-End
<img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white"> <img src="https://img.shields.io/badge/RiverPod-02569B?style=for-the-badge&logo=flutter&logoColor=white">

### Back-End
<img src="https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white"> <img src="https://img.shields.io/badge/gradle-02303A?style=for-the-badge&logo=gradle&logoColor=white">

## 협업 툴
<img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white"> <img src="https://img.shields.io/badge/git-F05032?style=for-the-badge&logo=git&logoColor=white"> <img src="https://img.shields.io/badge/Notioin-000000?style=for-the-badge&logo=notion&logoColor=white"> <img src="https://img.shields.io/badge/Slack-4A154B?style=for-the-badge&logo=slack&logoColor=white">
## ERD
![66nRBpTgKcAaMdHiq](https://github.com/9oj0e/pathorder_app/assets/129649095/617089f0-a2b4-44a3-ae25-228c0ab848b7)
# 🛠️ 전략
- 플러터에서 통신을 하면서 앱이 느려지는 경우가 발생을 해서 최대한 통신을 줄이기 위한 전략 적용.
- 검색 기능 
  
  플러터에서 주문 하기 페이지로 이동 시 모든 메뉴를 불러오는 통신을 하기 때문에 따로 검색 통신을 한번 더 하는 것은 비효율 적이라고 생각하여 통신한 데이터들을 필터링하는 방식 사용.
  
  <img src="https://github.com/cowcat0722/pathorder_copy_app/assets/153582126/68461fa3-bd0c-464c-b172-6aec01ee4fb8"  width="256" height="256"/>

-  장바구니 관리
 
    장바구니에 음료를 담을 때 통신을 하지 않고 플러터 쪽에서 주문하기에 필요한 주문 데이터를 저장하는 'SessionCart' 클래스를 생성하여 장바구니 관리함.
 
-  지도 카메라 위치 변경 이벤트

    지도 카메라 위치 변경 이벤트는 초당 수십번의 통신 요청을 함 -> 이것을 효율적으로 처리하기 위해 Timer를 이용해서 간단하게 디바운싱코드를 구현하여 적용.

    <table style="border: 2px;">
<tr>
  <td align=center>디바운싱 적용 전</td>
  <td align=center>디바운싱 적용 후</td>
</tr>
<tr>
  <td><img src="https://github.com/cowcat0722/pathorder_copy_app/assets/153582126/6122343d-5407-4ca3-a3ca-c9ffc47d41a2"  width="256" height="455"/></td>
  <td><img src="https://github.com/cowcat0722/pathorder_copy_app/assets/153582126/18715e94-038f-45c5-92a8-4bb21b32b8a5"  width="256" height="455"/></td>
</tr>
</table>


=> <b>이러한 전략들을 구현함으로써 우리는 애플리케이션이 불필요한 네트워크 통신을 줄이고 그로인한 사용자 경험을 향상시킬 수 있도록 노력하였음.</b>

# 시나리오

<table style="border: 2px;">
<tr>
  <td align=center>스플래시 화면</td>
  <td align=center>회원가입</td>
</tr>
<tr>
  <td><img src="https://github.com/cowcat0722/pathorder_copy_app/assets/153582126/e592b843-5034-4612-ad4c-d32a19c38650"  width="256" height="455"/></td>
  <td><img src="https://github.com/cowcat0722/pathorder_copy_app/assets/153582126/dcf095f9-e99e-4160-8b5b-f98dc34a8480"  width="256" height="455"/></td>
</tr>
<tr>
  <td align=center>로그인</td>
  <td align=center>리뷰보기</td>
</tr>
<tr>
  <td><img src="https://github.com/cowcat0722/pathorder_copy_app/assets/153582126/32bfa2d7-2a80-4ddf-98c3-93b626e737dc"  width="256" height="455"/></td>
  <td><img src="https://github.com/cowcat0722/pathorder_copy_app/assets/153582126/1918878d-7043-4831-a4b5-6fb20aeaa53f"  width="256" height="455"/></td>
</tr>
<tr>
  <td align=center>리뷰 쓰기</td>
  <td align=center>스크랩</td>
</tr>
<tr>
  <td><img src="https://github.com/cowcat0722/pathorder_copy_app/assets/153582126/2b83d878-0846-41c6-9f2f-7b9429e08d46"  width="256" height="455"/></td>
  <td><img src="https://github.com/cowcat0722/pathorder_copy_app/assets/153582126/007ca2ea-773e-4f04-ad21-bf9944be7a8b"  width="256" height="455"/></td>
</tr>
</table>
