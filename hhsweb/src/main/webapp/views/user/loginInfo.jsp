<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="user/css/loginInfo.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
	<div id="wrap">
		<div id="loginInfoDiv">
			<h3>회원가입</h3>
			<form action="userInsert" method="post" onsubmit="return userInfo()">
				<div><label>아이디 : </label><input id="userId" name="userId" placeholder="4자 이상"></div>
				<div><label>비번 : </label><input id="userPwd" name="userPwd" type="password" placeholder="4자 이상"></div>
				<div><label>이메일 : </label><input id="userEmail" name="userEmail" type="email" placeholder="이메일(생략가능)" value="1234@1234"></div>
				<div><input type="submit" value="완료"><input type="button" value="메인으로" onclick="location.href ='/'"></div>
			</form>
		</div>
		<c:if test="${ !empty requestScope.message }">
			<h2 style="text-align: center;">${ message }</h2>
		</c:if>
	</div>
</body>
<script type="text/javascript">
	function userInfo() {
		let userId = $('#userId').val();
		let userPwd = $('#userPwd').val();
		if(userId.length < 4) {
			alert('아이디는 4자 이상 입력해주세요.');
			return false;
		}
		if(userPwd.length < 4) {
			alert('비밀번호는 4자 이상 입력해주세요.');
			return false;
		}
	}
</script>
</html>