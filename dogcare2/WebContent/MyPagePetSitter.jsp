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
</head>
<body>

<br><br><br>

<!-- <div class="header">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<img src="images/로고.png" style="width: 120px; vertical-align: middle;">
	
	<div>
	<a style="font-family: 카페24 써라운드 OTF;">홈</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a style="font-family: 카페24 써라운드 OTF;">펫시팅</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a style="font-family: 카페24 써라운드 OTF;">커뮤니티</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a style="font-family: 카페24 써라운드 OTF;">마이페이지</a>
	</div>
	
	<div style="float: right; vertical-align: middle;">
	<img src="images/bell.png" style="width: 20px;">&nbsp;
	<img src="images/gear.png" style="width: 20px;">&nbsp;
	<img src="images/user.png" style="width: 25px;">&nbsp;&nbsp;
	</div>
	<br><br>
</div> -->

<div class="header" style="display: flex; align-items: center; justify-content: space-between;">

    <div style="display: flex; align-items: center;">
    	&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="images/logo.png" style="width: 120px; vertical-align: middle;">
    </div>
    
    <div id="tab" style="display: flex; align-items: center;">
        <a style="font-size: 14pt; margin-left: 20px;">홈</a>
        <a style="font-size: 14pt; margin-left: 30px;">펫시팅</a>
        <a style="font-size: 14pt; margin-left: 30px;">커뮤니티</a>
        <a href="MyPagePetPartners.jsp" style="font-size: 14pt; margin-left: 30px;">마이페이지</a>
    </div>
    
    <div style="display: flex; align-items: center;">
        <img src="images/bell.png" style="width: 20px; margin-left: 10px;">
        <img src="images/gear.png" style="width: 20px; margin-left: 10px;">
        <img src="images/user.png" style="width: 25px; margin-left: 10px;">
        &nbsp;&nbsp;&nbsp;&nbsp;
    </div>
</div>
<br>

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