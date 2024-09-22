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
<title>MyPagePetSitter.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/final.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	$().ready(function()
	{
		$("#logoutBtn").click(function()
		{
			alert("로그아웃합니다.");
			$(location).attr("href", "logout.action");
		});
	});

</script>
</head>
<body>

<c:import url="Menu.jsp"></c:import>

<div class="main" style="background-color: #F2F2F2;">
	<!-- <hr style="color: #F2F2F2; box-shadow: 0px 2px 2px gray;"> -->
	<br><br>
	<div style="background-color: white; width: 60%; margin: 0 auto;">
		<br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<c:if test="${userInfo.gender.equals('남') }">
		<img src="images/user_m.png" style="width: 70px; vertical-align: middle;">
		</c:if>
		<c:if test="${userInfo.gender.equals('여') }">
		<img src="images/user_w.png" style="width: 70px; vertical-align: middle;">
		</c:if>
		&nbsp;&nbsp;
		<span style="font-size: 14pt; vertical-align: middle;">
			<span style="font-family: 'Pretendard'; font-weight: 700; font-size: 16pt;">${userInfo.name }</span>
			님, 안녕하세요!&nbsp;
			<span style="color: gray; font-size: 10pt;">${userInfo.create_date.substring(2,4) }.${userInfo.create_date.substring(5,7) }.${userInfo.create_date.substring(8,10) } 가입</span>
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
		<a href="SalaryList.jsp">정산관리</a>
		<br><br>
		<hr style="color: #F1F4F4; width: 95%;">
		<br><br>
		<!-- 
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a>견주 계정 연동하기</a>
		<br><br>
		<hr style="color: #F1F4F4; width: 95%;">
		<br><br> 
		-->
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button type="button" id="logoutBtn" style="border: none; font-family: 'Pretendard'; font-weight: 600; font-size: 12pt; background-color: #FBFBFB;">로그아웃</button>
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