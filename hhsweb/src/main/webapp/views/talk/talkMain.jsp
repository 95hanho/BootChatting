<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채팅 메인</title>
<link rel="stylesheet" href="talk/css/talkMain.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
	<div id="logout-Wrap">
		<div id="logoutDiv">
			<button onclick="location.href='logoutView'">${ loginUser.userId } 로그아웃</button>
		</div>
	</div>

	<br>
	<section>
		<div id="talkDiv">	<!-- 참여 채팅방 목록 -->
			<div class="talkSpaces" ondblclick="">
				<label>asdf</label>
				<button>X</button>
				<div class="lastTalk">└ asdf:sasdfasfdsafasdfsfsafsdaad</div>
				<div class="noReadNum">1</div>
			</div>
		</div>
		
		<div id="talkadd">
			<div id="talkaddBtn" onclick="userOut();">-</div> <!-- 초대유저제외 -->
			<div id="userListDiv"> <!-- 초대가능유저목록 -->
				<div id="userListHeader">접속유저목록</div>
				<div id="userList">
				<!-- 
					<div class="userInfo">
						<div class="userline" onclick="guestAdd();"></div>
						<div class="userConnect">●</div>
				
					</div>
				 -->
				</div>
			</div>
		</div>
		<div id="talkmakeDiv"></div> <!-- 초대할사람 -->
		<button id="talkmakeBtn" onclick="talkmake();">톡방생성</button>
	</section>
	
</body>
<script>
	// 웹소켓메시지
	var webmessage = '${ webmessage }';
</script>
<script type="text/javascript" src="talk/js/talkMain.js"></script>
<script type="text/javascript" src="websocket/js/websocket.js"></script>
</html>