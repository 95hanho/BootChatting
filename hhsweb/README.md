# hhsgit
이클립스 스프링부트를 이용한 채팅 프로그램

## 주요 UI

> 채팅목록

![image](https://user-images.githubusercontent.com/64001275/135051025-9b0ed968-049a-4105-aff6-3bd88c5913bd.png)

> 채팅방

![image](https://user-images.githubusercontent.com/64001275/135051403-8d34bd9f-4ee8-46dd-ad8e-90a7d1446333.png)

## 주요 경로

- 채팅목록

> https://github.com/95hanho/BootChatting/blob/master/src/main/webapp/views/talk/talkMain.jsp
> https://github.com/95hanho/BootChatting/blob/master/src/main/resources/static/talk/js/talkMain.js

- 채팅방

> https://github.com/95hanho/BootChatting/blob/master/src/main/webapp/views/talk/talkSpace.jsp
> https://github.com/95hanho/BootChatting/blob/master/src/main/resources/static/talk/js/talkSpace.js

- 웹소켓

> https://github.com/95hanho/BootChatting/blob/master/src/main/resources/static/websocket/js/websocket.js

- SQL

> https://github.com/95hanho/BootChatting/blob/master/src/main/resources/mappers/talk-mapper.xml

- 자바

> https://github.com/95hanho/BootChatting/tree/master/src/main/java/com/sejong/hhsweb

## 주요 기능

- 스프링부트의 활용(mvc설정, DB와 mybatis설정 및 Alias관리)

- 채팅화면 제작

- 사진보내기 및 업로드 다운로드

- @Async 다중스레드의 활용(세션시간 종료 시 자동로그아웃)

- 웹소켓을 최대한 활용한 실시간 반응(실시간 채팅)

- 인터셉터를 이용한 AOP 활용(요청마다 세션 연장)

- 파파고번역 기능 추가(영 -> 한, 한 -> 영)
