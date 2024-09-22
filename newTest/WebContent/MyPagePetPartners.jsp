<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPagePetPartners.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/final.css">
</head>
<body>

<c:import url="Menu.jsp"></c:import>

<div class="main" style="background-color: #F2F2F2;">
	<!-- <hr style="color: #F2F2F2; box-shadow: 0px 2px 2px gray;"> -->
	<br><br>
	<div style="background-color: white; width: 60%; margin: 0 auto;">
		<br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<img src="images/user_1.png" style="width: 70px; vertical-align: middle;">
		&nbsp;&nbsp;
		<span style="font-size: 14pt; vertical-align: middle;">
			<span style="font-family: 'Pretendard'; font-weight: 700; font-size: 16pt;">김예지</span>
			님, 안녕하세요!&nbsp;
			<span style="color: gray; font-size: 10pt;">24.05.10 가입</span>
		</span>
		<br>
		<a href="ModifyUserInfo.jsp" style="color: gray; float: right;">▶ 정보 수정하기&nbsp;&nbsp;&nbsp;&nbsp;︎</a>
		<br><br>
	</div>
	
	<br>

	<div style="font-family: 'Pretendard'; font-weight: 600; font-size: 12pt; background-color: #FBFBFB; width: 60%; margin: 0 auto;">
		<br><br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="Notice.jsp">공지사항</a>
		<br><br>
		<hr style="color: #F1F4F4; width: 95%;">
		<br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="Enquiry.jsp">문의사항</a>
		<br><br>
		<hr style="color: #F1F4F4; width: 95%;">
		<br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="doginsertform.action">반려견관리</a>
		<br><br>
		<hr style="color: #F1F4F4; width: 95%;">
		<br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="PayList.jsp">결제관리</a>
		<br><br>
		<hr style="color: #F1F4F4; width: 95%;">
		<br><br>
		<!-- 
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a>펫시터 계정 연동하기</a>
		<br><br>
		<hr style="color: #F1F4F4; width: 95%;">
		<br><br> 
		-->
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a>로그아웃</a>
		<br><br>
		<hr style="color: #F1F4F4; width: 95%;">
		<br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="Unregister.jsp">회원탈퇴</a>
		<br><br><br>
	</div>
	<br><br>
</div>

<div class="footer" style="background-color: #BBBBBB;">
	<br><br><br><br><br><br>
</div>

</body>
</html>